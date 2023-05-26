FROM flutter-builder

WORKDIR /root

#COPY ./ssh-config/* /root/.ssh/

#RUN chmod 400 -R /root/.ssh

RUN git config --global pull.rebase true
RUN git config --global core.ignorecase false

ENV GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"

CMD ([ -d "project" ] || git clone https://github.com/brash-ram/frontend-farm-project.git project) \
	&& cd project \
	&& git fetch --all \
	&& git reset --hard \
	&& git reset --hard origin/master \
	&& git pull \
	&& echo Current commit: $(git show -s --format=%H) \
	&& cp .env.prod .env \
	&& flutter clean \
	&& flutter gen-l10n \
	&& flutter pub get \
	&& dart run build_runner build --delete-conflicting-outputs \
	&& flutter build apk \
	&& cp -r build/app/outputs/flutter-apk/* /root/apk/ \ 
	&& flutter build web \
	&& cp -r build/web/* /root/web/
