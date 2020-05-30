Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 743271E8CE1
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 03:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=i+uXmW78BOPUz3GDtLfvkwcRUFXLC7GbX4kU/OoXZLY=; b=UD6
	ekA1JNG5/iGbF+TRPWQ5nmapcqjddC4uFjOO6IMS7SuisLPJhhIAwHYEnZEMAj4Jjfwez0YocenjB
	bAti67Zd+Xl0cRI2sqcRn3ihFE1Nz3ifh+m5Zp1wQ97fSLFr2hZOc7F7HtkR5WXMtSj4ZcRR1ogBT
	xxjrJ/vqgXgUSpzn7lYYRsFCTVzrzHU573gzcvLaNGThSd+Vvzwkpam89inb5fx8sOu74QjQoP6Cu
	3yOukrdKjbfNbkY9TcxN1CmoYLWtuDXo+3i9cVmUOb8nTuizoOxlHAzN652ts/667MsANvRk0y32R
	ylrrboj5dAxu0BXYEW9c07rQ+CTrIjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeqN7-0004Nr-Du; Sat, 30 May 2020 01:33:13 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeqN1-0004Mc-Si
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 01:33:09 +0000
Received: by mail-il1-x12a.google.com with SMTP id j3so4272003ilk.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 29 May 2020 18:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=rSS9526Ut0gV7yFFtuYIRgMfHoGkGb0N3cE0otMelZo=;
 b=VjITYVj+kCxH+My7HPLbtLCW3bVozcRasRJI20nUOrccvDVPNeaLZFGxTJVFuZe7Cb
 04Vb5DqsmFTh1P9j6L9PrTBHswZcc2FLJnNwzqlqVZnPG/roccI2GEC+g6fEHj+3FbqE
 JmX9jOtXUIdSNUETLwW/2dm06zyU8yp7S3vknXW/zYEO6m9ZdI7wIBxQMt0h7KR5yHoW
 cKE5NxFxabov1JMBiWaj40ovJuU1kqePneg3nqZsAlWzJaps/G+vHpqAwr+AW/tt5IN+
 y9KPcWMNmjhZxEZJm5CKKz7jqdudlwViGUhvxvd0qYVNq/ViUmv6cHMzCRyQPudoWPdr
 GWRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rSS9526Ut0gV7yFFtuYIRgMfHoGkGb0N3cE0otMelZo=;
 b=X4txjJV93BnhjP+VbsclRrKUxpurjtZpAcCFIzuDh5SdzyuZvEyySLYoVmTkTznvLP
 Ub6mFKsUID7o9J/o2so4lF3J1sfmrOZaGM4SCUxNAf2ylGL7lOWv+Q9zU9isIHvsR9Nk
 bNDrH9xd3IxE4Dkyiuqo6mRdeMHRDo6S3ShE0eOTAoqThTDIL2qFizEw4dg8hPX15L57
 nd7tx6BTVWOSwzTBITq9Sl6WDRlLfTp1cqbSCQQJwmn+qrmVm3BSIEYv3/rSgSQIlOrH
 cS/qpU03KXEnJE3UU1aABv4lWna7pl2Xi7xv856SF90wadzMvRnQofdEW1WgYcWOVLC4
 UsXA==
X-Gm-Message-State: AOAM5338HG9lcXr720WNO8bF+Db8lvYJSjnt0WYhPDj6K3UphSyl7sSS
 5C+V4zuPfLLscqFOkNHoYmH2l9fICjz3mpK6ovrBcbNEhzE=
X-Google-Smtp-Source: ABdhPJxVXJN14qYp9mgBQl55FzTd5vFIykWgrwwj2ii9OYYR7JaQ3/SWsgGdsEq1cYUtbBtXH6P3KDMk8fvXmq5riTI=
X-Received: by 2002:a92:5e4a:: with SMTP id s71mr9104845ilb.119.1590802384714; 
 Fri, 29 May 2020 18:33:04 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Bailey <danielb@meshplusplus.com>
Date: Fri, 29 May 2020 18:32:53 -0700
Message-ID: <CABzx=O0frJMqUCJOJ8bMpkpY8dSmhQcEneUOL5HG9H8f+MQyQA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_183308_001613_6DDE8E8B 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/2] procd: allow optional watchdog instance
 parameter
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
Content-Type: multipart/mixed; boundary="===============5315738898161206951=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5315738898161206951==
Content-Type: multipart/alternative; boundary="0000000000000c90ef05a6d38b31"

--0000000000000c90ef05a6d38b31
Content-Type: text/plain; charset="UTF-8"

From: Daniel Bailey <danielb@meshplusplus.com>
Date: Thu, 28 May 2020 20:39:35 -0700
Subject: [PATCH] procd: allow optional watchdog instance parameter

Optional instance watchdog timeout and watchdog mode be set by adding
procd_set_param $mode $timeout

$mode is an integer [0-2] representing instance watchdog mode of
operation:
0 = disabled
1 = passive mode, e.g. client must poke watchdog via ubus
2 = active mode, e.g. client must provide watchdog endpoint

Signed-off-by: Daniel Bailey <danielb@meshplusplus.com>
---
 package/system/procd/files/procd.sh | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/system/procd/files/procd.sh
b/package/system/procd/files/procd.sh
index dd6dc1c58d..3a1f413f85 100644
--- a/package/system/procd/files/procd.sh
+++ b/package/system/procd/files/procd.sh
@@ -186,7 +186,7 @@ _procd_add_jail() {
  json_add_string name "$1"

  shift
-
+
  for a in $@; do
  case $a in
  log) json_add_boolean "log" "1";;
@@ -247,7 +247,7 @@ _procd_set_param() {
  env|data|limits)
  _procd_add_table "$type" "$@"
  ;;
- command|netdev|file|respawn|watch)
+ command|netdev|file|respawn|watch|watchdog)
  _procd_add_array "$type" "$@"
  ;;
  error)
@@ -378,7 +378,7 @@ _procd_append_param() {
  env|data|limits)
  _procd_add_table_data "$@"
  ;;
- command|netdev|file|respawn|watch)
+ command|netdev|file|respawn|watch|watchdog)
  _procd_add_array_data "$@"
  ;;
  error)
--
2.25.1

--0000000000000c90ef05a6d38b31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><span><div dir=3D"ltr" style=3D"margi=
n-left:0pt" align=3D"left"><span><div dir=3D"ltr" style=3D"margin-left:0pt"=
 align=3D"left">From: Daniel Bailey &lt;<a href=3D"mailto:danielb@meshplusp=
lus.com">danielb@meshplusplus.com</a>&gt;<br>Date: Thu, 28 May 2020 20:39:3=
5 -0700<br>Subject: [PATCH] procd: allow optional watchdog instance paramet=
er<br><br>Optional instance watchdog timeout and watchdog mode be set by ad=
ding<br>procd_set_param $mode $timeout<br><br>$mode is an integer [0-2] rep=
resenting instance watchdog mode of<br>operation:<br>0 =3D disabled<br>1 =
=3D passive mode, e.g. client must poke watchdog via ubus<br>2 =3D active m=
ode, e.g. client must provide watchdog endpoint<br><br>Signed-off-by: Danie=
l Bailey &lt;<a href=3D"mailto:danielb@meshplusplus.com">danielb@meshpluspl=
us.com</a>&gt;<br>---<br>=C2=A0package/system/procd/files/procd.sh | 6 +++-=
--<br>=C2=A01 file changed, 3 insertions(+), 3 deletions(-)<br><br>diff --g=
it a/package/system/procd/files/procd.sh b/package/system/procd/files/procd=
.sh<br>index dd6dc1c58d..3a1f413f85 100644<br>--- a/package/system/procd/fi=
les/procd.sh<br>+++ b/package/system/procd/files/procd.sh<br>@@ -186,7 +186=
,7 @@ _procd_add_jail() {<br>=C2=A0	json_add_string name &quot;$1&quot;<br>=
<br>=C2=A0	shift<br>-<br>+<br>=C2=A0	for a in $@; do<br>=C2=A0		case $a in<=
br>=C2=A0		log)	json_add_boolean &quot;log&quot; &quot;1&quot;;;<br>@@ -247=
,7 +247,7 @@ _procd_set_param() {<br>=C2=A0		env|data|limits)<br>=C2=A0			_=
procd_add_table &quot;$type&quot; &quot;$@&quot;<br>=C2=A0		;;<br>-		comman=
d|netdev|file|respawn|watch)<br>+		command|netdev|file|respawn|watch|watchd=
og)<br>=C2=A0			_procd_add_array &quot;$type&quot; &quot;$@&quot;<br>=C2=A0=
		;;<br>=C2=A0		error)<br>@@ -378,7 +378,7 @@ _procd_append_param() {<br>=
=C2=A0		env|data|limits)<br>=C2=A0			_procd_add_table_data &quot;$@&quot;<b=
r>=C2=A0		;;<br>-		command|netdev|file|respawn|watch)<br>+		command|netdev|=
file|respawn|watch|watchdog)<br>=C2=A0			_procd_add_array_data &quot;$@&quo=
t;<br>=C2=A0		;;<br>=C2=A0		error)<br>--<br>2.25.1<br><br></div></span><spa=
n></span></div></span></div></div></div>

--0000000000000c90ef05a6d38b31--


--===============5315738898161206951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5315738898161206951==--

