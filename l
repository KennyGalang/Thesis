GRAILS_HOME=/Users/Zyne/.sdkman/candidates/grails/current
rvm_bin_path=/Users/Zyne/.rvm/bin
TERM_PROGRAM=Apple_Terminal
GEM_HOME=/Users/Zyne/.rvm/gems/ruby-2.4.2
SHELL=/bin/bash
TERM=xterm-256color
IRBRC=/Users/Zyne/.rvm/rubies/ruby-2.4.2/.irbrc
TMPDIR=/var/folders/7d/c0dbtmq1483dhxkvl89sf7nr0000gn/T/
Apple_PubSub_Socket_Render=/private/tmp/com.apple.launchd.D94lfVpVEw/Render
TERM_PROGRAM_VERSION=421.2
OLDPWD=/Users/Zyne/desktop/thesis/website
MY_RUBY_HOME=/Users/Zyne/.rvm/rubies/ruby-2.4.2
TERM_SESSION_ID=6039163E-4816-455C-8B87-F0A2F5A490C0
SDKMAN_PLATFORM=Darwin
SDKMAN_CURRENT_API=https://api.sdkman.io/2
FLASK_APP=run.py
USER=Zyne
_system_type=Darwin
SDKMAN_LEGACY_API=https://api.sdkman.io/1
rvm_path=/Users/Zyne/.rvm
SSH_AUTH_SOCK=/private/tmp/com.apple.launchd.SQdv9k3Nxe/Listeners
rvm_prefix=/Users/Zyne
PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:/Users/Zyne/.rvm/gems/ruby-2.4.2/bin:/Users/Zyne/.rvm/gems/ruby-2.4.2@global/bin:/Users/Zyne/.rvm/rubies/ruby-2.4.2/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Users/Zyne/.sdkman/candidates/grails/current/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Users/Zyne/.rvm/bin
PWD=/Users/Zyne/desktop/thesis
LANG=en_CA.UTF-8
FLASK_DEBUG=1
SDKMAN_VERSION=5.1.18+191
_system_arch=x86_64
XPC_FLAGS=0x0
_system_version=10.14
XPC_SERVICE_NAME=0
rvm_version=1.29.3 (latest)
SHLVL=1
HOME=/Users/Zyne
LOGNAME=Zyne
SDKMAN_DIR=/Users/Zyne/.sdkman
GEM_PATH=/Users/Zyne/.rvm/gems/ruby-2.4.2:/Users/Zyne/.rvm/gems/ruby-2.4.2@global
SDKMAN_CANDIDATES_DIR=/Users/Zyne/.sdkman/candidates
DISPLAY=/private/tmp/com.apple.launchd.LJN8pVkDAP/org.macosforge.xquartz:0
RUBY_VERSION=ruby-2.4.2
SECURITYSESSIONID=186a7
_system_name=OSX
_=/usr/bin/env

<!-- {% extends "layout.html" %}

{% block content %}
	<div class="content-section">
		<form method="POST", action="">
			{{ form.hidden_tag() }}
			<fieldset class="form-group">
				<legend class="border-bottom mb-4"> Join Today</legend>
				<div class="form-group">
					{{ form.username.label(class="form-control-label") }}
					{% if form.username.errors %}
						{{ form.username(class="form-control form-control-lg is-invalid") }}
						<div class="invalid-feedback">
							{% for error in form.username.errors %}
								<span>{{ error }}</span>
							{% endfor %}
						</div>
					{% else %}
					{{ form.username(class="form-control form-control-lg") }}
					{% endif %}

				</div>

				<div class="form-group">
                    {{ form.email.label(class="form-control-label") }}
                    {% if form.email.errors %}
                        {{ form.email(class="form-control form-control-lg is-invalid") }}
                        <div class="invalid-feedback">
                            {% for error in form.email.errors %}
                                <span>{{ error }}</span>
                            {% endfor %}
                        </div>
                    {% else %}
                    {{ form.email(class="form-control form-control-lg") }}
                    {% endif %}
                </div>

				<div class="form-group">
					{{ form.password.label(class="form-control-label") }}
					{% if form.password.errors %}
						{{ form.password(class="form-control form-control-lg is-invalid") }}
						<div class="invalid-feedback">
							{% for error in form.password.errors %}
								<span>{{ error }}</span>
							{% endfor %}
						</div>
					{% else %}
					{{ form.password(class="form-control form-control-lg") }}
					{% endif %}
				</div>
				<div class="form-group">
					{{ form.confirm_password.label(class="form-control-label") }}
					{% if form.confirm_password.errors %}
						{{ form.confirm_password(class="form-control form-control-lg is-invalid") }}
						<div class="invalid-feedback">
							{% for error in form.confirm_password.errors %}
								<span>{{ error }}</span>
							{% endfor %}
						</div>
					{% else %}
					{{ form.confirm_password(class="form-control form-control-lg") }}
					{% endif %}
				</div>
			</fieldset>
			<div class="form-group">
				{{ form.submit(class="btn btn-outline-info") }}
			</div>
		</form>
	</div>
	<div class="border-top pt-3">
		<small class="text-muted">
			Already Have an Account? <a class="ml-2" href="{{ url_for('login') }}">Sign in </a>
		</small>
	</div>

{% endblock content %}
 -->