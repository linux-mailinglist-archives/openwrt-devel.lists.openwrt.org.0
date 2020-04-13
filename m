Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA071A658B
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 13:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lh1W4S3dp3Rbni3QbO6Wk1OsBfLANHY6mA3o7Ld1HeQ=; b=PTi
	6dyBkWR3aUm24NJ1teAdjHp6SIygOn+2swvJo6VHpw7F9ZTth80mPL1h4AM57SBdMzOvOw0vZvVb9
	1KEhdPn0gi758jIpWFXel+LlOlCmx/KwLQI24CLhxg/Cdw5X6jOiqOqcoFUSObpWI3tPD9UJkDSuI
	+9gSBxvWL2YZUdayczDJWoTGuyoeSv3bSk7nnGwcA6sbC0N6IDREUEgOV3rJPFbjTwb27QbHNHlPq
	iGMsbZ8vOhOGgHJu7Y8IUUTfh3UjCb8/fXrZKbYmKPFeDMkGg4p9J8bnQ6V26dpZtj/ODOb1mKj3I
	M3/2JRKPh/iHT2W1UekbXhXJWDGgJyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNx53-00084h-AT; Mon, 13 Apr 2020 11:16:45 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNx4x-000848-Hg
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 11:16:41 +0000
Received: by mail-wr1-x42e.google.com with SMTP id a25so9775147wrd.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 Apr 2020 04:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melmac.net; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=bbbC1wfdodVsUufVEvRB0eZfNfU9+0M+mINBVeWC5as=;
 b=UejwtGuli2I3JeddLTvBmhSC0jBzwlaNQCrfNFCdiuuDenrJENr6k+jYnH1qBrkEVa
 7v6kiry7Vv+CYenGln3WxWe2t9PxnPUl53mmBhbLvSKaXPxvaPGiAQXaavy1jgvOOGnl
 bUe95xBKuUFBm9CSWV1XFXMFBYgMaBKU+Ukz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bbbC1wfdodVsUufVEvRB0eZfNfU9+0M+mINBVeWC5as=;
 b=W0vzMy+8F+TK5Q5NsHvW0zaCdj1VHEdXq1tU4hjwtDf5ZamFuCK1QvWdhSLpZBink+
 kYEKNGgyEh86B7ZbB6gTnvqFqnP2OleQJqXJEUODPhmM9HIuyPz+lw60pfcTQ5anaTZu
 t9aluq+7l77l//hnZcBuLbBVgM+C7KYsunK/+TlkEg1AZOU38UuyT2RRl4u2nng9zVMT
 XO9RhTFwdk7kK/53AMBEMLI+mXk1G112u9G1sBL6IJLCV2tOvEnpModsiaCYWn/+SulC
 NRPGCVGuymlkKF7wnBPejBbEOc3WiMNmAtSUAMtmKxmqUtFFNNom/OEPtp/7zLMl9gJh
 CBBQ==
X-Gm-Message-State: AGi0PubnPI+gWi5ShsO/f58s039uaxPNZ0pObv9hhwr/ZqDcxbqukwuS
 I4OzR+8X6UVEf4wxlFSX+rYAECL6fdnmJvuMANnoaQqpUexFJg==
X-Google-Smtp-Source: APiQypK9lFSNjWkYrnmNPjr0hlj+Z8lfcHc6ZYivm0ONSdNC2rOuZGHoLnLUeH8g8zz5zBIMUd/XX06lmE8jGfYyn7U=
X-Received: by 2002:a5d:498b:: with SMTP id r11mr18230931wrq.368.1586776596861; 
 Mon, 13 Apr 2020 04:16:36 -0700 (PDT)
MIME-Version: 1.0
From: Stan Grishin <stangri@melmac.net>
Date: Mon, 13 Apr 2020 04:16:25 -0700
Message-ID: <CALu2O0SgR3FGgJ6epuQsmeZFxTsd0czNHaX3N0wQRgWYKWwbUQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_041639_592786_110D04D2 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] new functionality for service shell function
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2224672335954552545=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2224672335954552545==
Content-Type: multipart/alternative; boundary="00000000000064ebc105a32a3750"

--00000000000064ebc105a32a3750
Content-Type: text/plain; charset="UTF-8"

I've been using something similar on my system and propose the following
patch (first submission to the list, be gentle ;)):

diff --git a/package/base-files/files/etc/profile
b/package/base-files/files/etc/profile
index 0beff1608f..e8350cfd6a 100644
--- a/package/base-files/files/etc/profile
+++ b/package/base-files/files/etc/profile
@@ -38,3 +38,24 @@ in order to prevent unauthorized SSH logins.
 --------------------------------------------------
 EOF
 fi
+
+service() {
+        if [ "$1" = "list-enabled" ]; then
+                for F in /etc/init.d/* ; do
+                        $F enabled && echo "$F enabled"
+                done;
+        elif [ "$1" = "list-disabled" ]; then
+                for F in /etc/init.d/* ; do
+                        $F enabled || echo "$F disabled"
+                done;
+        elif [ -f "/etc/init.d/$1" ]; then
+                /etc/init.d/$@
+        else
+                echo "Usage: service list-disabled|list-enabled|<service>
[command]"
+                if [ -n "$1" ]; then
+                        echo "service "'"'"$1"'"'" not found, the
following services are available:"
+                        ls "/etc/init.d"
+                fi
+                return 1
+        fi
+}
diff --git a/package/base-files/files/etc/rc.common
b/package/base-files/files/etc/rc.common
index 7c11544405..c44614d757 100755
--- a/package/base-files/files/etc/rc.common
+++ b/package/base-files/files/etc/rc.common
@@ -67,13 +67,14 @@ help() {
 Syntax: $initscript [command]

 Available commands:
- start Start the service
- stop Stop the service
- restart Restart the service
- reload Reload configuration files (or restart if service does not
implement reload)
- enable Enable service autostart
- disable Disable service autostart
- enabled Check if service is started on boot
+ start Start the service
+ stop Stop the service
+ restart Restart the service
+ reload Reload configuration files (or restart if service does not
implement reload)
+ enable Enable service autostart
+ disable Disable service autostart
+ enabled Check if service is started on boot
+ status-ubus Show ubus info for the service
 $EXTRA_HELP
 EOF
 }
@@ -165,6 +166,13 @@ ${EXTRA_HELP}"
  }
 }

-ALL_COMMANDS="start stop reload restart boot shutdown enable disable
enabled depends ${EXTRA_COMMANDS}"
-list_contains ALL_COMMANDS "$action" || action=help
+status_ubus() {
+ name="$(basename "${initscript}")"
+ /bin/ubus call service list "{'name': '$name'}"
+ return 0
+}
+
+ALL_COMMANDS="start stop reload restart boot shutdown enable disable
enabled depends status-ubus ${EXTRA_COMMANDS}"
+list_contains ALL_COMMANDS "$action" && action="${action/-/_}" ||
action=help
 $action "$@"
+

--00000000000064ebc105a32a3750
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve been using something similar on my system and pro=
pose the following patch (first submission to the list, be gentle ;)):<div>=
<br></div><div>diff --git a/package/base-files/files/etc/profile b/package/=
base-files/files/etc/profile<br>index 0beff1608f..e8350cfd6a 100644<br>--- =
a/package/base-files/files/etc/profile<br>+++ b/package/base-files/files/et=
c/profile<br>@@ -38,3 +38,24 @@ in order to prevent unauthorized SSH logins=
.<br>=C2=A0--------------------------------------------------<br>=C2=A0EOF<=
br>=C2=A0fi<br>+<br>+service() {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot=
;$1&quot; =3D &quot;list-enabled&quot; ]; then<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for F in /etc/init.d/* ; do<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0$F enabled &amp;&amp; echo &quot;$F enabled&quot;<br>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0elif [ &quot;$1&quot; =3D &quot;list-disabled&quot; ]; then<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for F in /etc/init.d/* ; do=
<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0$F enabled || echo &quot;$F disabled&quot;<br>+ =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done;<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0elif [ -f &quot;/etc/init.d/$1&quot; ]; then<br>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/etc/init.d/$@<br>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0else<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
echo &quot;Usage: service list-disabled|list-enabled|&lt;service&gt; [comma=
nd]&quot;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ =
-n &quot;$1&quot; ]; then<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;service &quot;&#39;&quo=
t;&#39;&quot;$1&quot;&#39;&quot;&#39;&quot; not found, the following servic=
es are available:&quot;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ls &quot;/etc/init.d&quot;<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 1<br>+ =C2=A0 =C2=A0 =C2=A0=
 =C2=A0fi<br>+}<br>diff --git a/package/base-files/files/etc/rc.common b/pa=
ckage/base-files/files/etc/rc.common<br>index 7c11544405..c44614d757 100755=
<br>--- a/package/base-files/files/etc/rc.common<br>+++ b/package/base-file=
s/files/etc/rc.common<br>@@ -67,13 +67,14 @@ help() {<br>=C2=A0Syntax: $ini=
tscript [command]<br>=C2=A0<br>=C2=A0Available commands:<br>-	start	Start t=
he service<br>-	stop	Stop the service<br>-	restart	Restart the service<br>-=
	reload	Reload configuration files (or restart if service does not implemen=
t reload)<br>-	enable	Enable service autostart<br>-	disable	Disable service=
 autostart<br>-	enabled	Check if service is started on boot<br>+	start		Sta=
rt the service<br>+	stop		Stop the service<br>+	restart		Restart the servic=
e<br>+	reload		Reload configuration files (or restart if service does not i=
mplement reload)<br>+	enable		Enable service autostart<br>+	disable		Disabl=
e service autostart<br>+	enabled		Check if service is started on boot<br>+	=
status-ubus	Show ubus info for the service<br>=C2=A0$EXTRA_HELP<br>=C2=A0EO=
F<br>=C2=A0}<br>@@ -165,6 +166,13 @@ ${EXTRA_HELP}&quot;<br>=C2=A0	}<br>=C2=
=A0}<br>=C2=A0<br>-ALL_COMMANDS=3D&quot;start stop reload restart boot shut=
down enable disable enabled depends ${EXTRA_COMMANDS}&quot;<br>-list_contai=
ns ALL_COMMANDS &quot;$action&quot; || action=3Dhelp<br>+status_ubus() {<br=
>+	name=3D&quot;$(basename &quot;${initscript}&quot;)&quot;<br>+	/bin/ubus =
call service list &quot;{&#39;name&#39;: &#39;$name&#39;}&quot;<br>+	return=
 0<br>+}<br>+<br>+ALL_COMMANDS=3D&quot;start stop reload restart boot shutd=
own enable disable enabled depends status-ubus ${EXTRA_COMMANDS}&quot;<br>+=
list_contains ALL_COMMANDS &quot;$action&quot; &amp;&amp; action=3D&quot;${=
action/-/_}&quot; || action=3Dhelp<br>=C2=A0$action &quot;$@&quot;<br>+<br>=
</div><div><br></div></div>

--00000000000064ebc105a32a3750--


--===============2224672335954552545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2224672335954552545==--

