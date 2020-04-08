Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3171A2B20
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 23:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FPkOHpiwecEVQ8keH5EuDtfdA5gDwqjULSzumtK0V/4=; b=RvtmWWwr8+H05uVhcdzpZA9oS
	M/hU9YmeqyMPpxLC3gT4a1nTCrZciji/OXXYlhLANilG+IeKoFyaQSbg1u8Sj4BHpwaKzIBf7nej/
	T2fxC9QQqDV0Gl+ypr3nASZVb91ZgXYHZXzJmNz+HTos9tiRGJxz+7In2Ub7Eha859s6YXnxG2X8k
	hUl8Fy6yy6CqQ2l4kbynXErE3e4ZimC96McHP6JoH//qmSBzkkeqtQWwKJO+wNbYDfq+r+3yJxLxq
	0wWQdwp4Du998FGKm2KdC9Edev6dpGh3uTa1mPZ4NzYp4E8bjZDxjTASizNPfcKRR1vs5kRdvBykP
	gUJGAw+dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMIHj-0003zl-I4; Wed, 08 Apr 2020 21:30:59 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMIHb-0003z0-06
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 21:30:52 +0000
Received: by mail-qk1-x741.google.com with SMTP id m67so1877714qke.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Apr 2020 14:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ARVS3QEFtitZrUgWlCc/ZM2kJ+sEHeZebJkof/opyCg=;
 b=WulyPdo6pk05/RQTk7L993anCUqIahvrpxlrrFEIucaMRDwWJjHJiAdMCd02S6QWKT
 g15+GGnpxOfuujYnjkaCRv/uGPoaxadcVKPAWh5xeGq870ryThjZWF8fcRzogJa9qRcD
 Jp8/c4aTLX4ohb15UMX92PCXTtVeN0N0LukRCj8vMLeoyPb7NqOTZfju3zqQ2AbeXRAp
 kYHQn7Jhm0M6KiX9M7I+IYkri72ZxjIPiWlQuD1clIbdkdXx415xG7emxWX0quUvb4tn
 OA+u2TnBi9ndKlYdaLsE46KjZcHh4bvLPAVF4HxLrDaBq/wTOUAnhw2EFHFEXPkTGHJN
 WLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ARVS3QEFtitZrUgWlCc/ZM2kJ+sEHeZebJkof/opyCg=;
 b=Zvhu1+W+F7YG4CBpN7RrIZVh3mj+GwOVODGHwE6HTVTFH6u0BEru+zgYqjJQHnCxOt
 qYvgOwaAydEU1M4qSxvMegVGgeMrflrMxGkE1lvKX+vHQPzjowy4n05LSFl6hl31Aozj
 WpSu3jkl0spLqdNv4XYuRZ4YJZCOkaUIAyDzcjfiZMqt9LedHTfWlXPinVan5BitE3St
 2xp9BjFCvzo28xEqFi2pGJZCGE1nvE3fR5S2XI7yIukcQ253eXiHqHCw5BVRTHb5vu0C
 +dXZCo8bg8DEjfVHjH/I1l48UkLXtqo2c7vvsvyDGM95R7styA2dZO+8r+P2h8CFfMeI
 X3UQ==
X-Gm-Message-State: AGi0PubUwNbYlSvp5gMKU8xZLfM436t159T9PhT5BShhaZ13YpgoK3d+
 wL6dwgZxgnPWMQrbk1UA+G+jXq4xMcxRblfAWfMe8knB8k0=
X-Google-Smtp-Source: APiQypIfLLR56AX8KYDgZd5aU9Ol+vQiqFC/s1CMGh0GqZEAlCWDlWTL1MtBdpTzY0ujDodnGY4YdrEgEgdVhJ/zZ34=
X-Received: by 2002:a37:274d:: with SMTP id n74mr4507518qkn.170.1586381449275; 
 Wed, 08 Apr 2020 14:30:49 -0700 (PDT)
MIME-Version: 1.0
References: <0953c8498417154e5590c80b3c6a29f4c4280de1.camel@aparcar.org>
In-Reply-To: <0953c8498417154e5590c80b3c6a29f4c4280de1.camel@aparcar.org>
From: Wes Turner <wes.turner@gmail.com>
Date: Wed, 8 Apr 2020 17:30:37 -0400
Message-ID: <CACfEFw9SPbPSXnNAHx73NnyyyTca5sDHRBs2mBB48vrsPDnhTw@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_143051_048353_EEC0ECFD 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Configuration management for OpenWrt
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============8424385826415110834=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8424385826415110834==
Content-Type: multipart/alternative; boundary="000000000000c32c5705a2ce36ec"

--000000000000c32c5705a2ce36ec
Content-Type: text/plain; charset="UTF-8"

/etc in git + Shell script + Ansible

I wrote a shell script that drops lock files in /etc/setup when that
function has successfully run without error.
If the lock file exists (test -f "/etc/setup/${lockname}"), the function
doesn't run again whenever I re-run the shell script.
I include /etc/setup/ and /etc/bin/ in /etc/sysupgrade.conf.

I haven't yet hooked post-upgrade somehow so that the setup shell script
runs automatically after upgrading OpenWRT firmware.
I could probably check /etc/openwrt_release and /etc/openwrt_version to
determine whether the version has changed.
https://openwrt.org/docs/techref/sysupgrade

https://github.com/gekmihesg/ansible-openwrt
> Manage OpenWRT and derivatives with Ansible but without Python

This runs an OpenWRT docker container with an interactive shell that IDK
how to kill without killing the PID or various incantations of
Ctrl-C/Ctrl-D/Ctrl-Z:

docker image pull openwrtorg/rootfs
docker run --rm -it --name=openwrt1 -h hostname --cap-add NET_ADMIN -v
$(readlink -e ./setup_openwrt.sh):/setup_openwrt.sh:ro -v $(readlink -e
./entrypoint.sh):/entrypoint.sh:ro openwrtorg/rootfs



On Wed, Apr 8, 2020 at 5:08 PM Paul Spooren <mail@aparcar.org> wrote:

> Hi all,
>
> I was wondering if there are some best practices for configuration
> management of OpenWrt devices. I understand that it is fairly easy to
> get/restore a backup of the etc/config folder, but though maybe there
> are some smarter ways.
>
> Ideally a local state (e.g. git repository) would deploy multiple
> devices and automatically update them via a command (or even cron).
>
> Other projects came up with solutions which seem to heavy for common
> WiFi routers. Ansible[0] is great and all, however requires plenty of
> Python to work conveniently. Then cloud-init[1] is Python as well, I
> think even heavier on the client side than Ansible and also doesn't
> seem to be the right use case.
>
> Some time ago I came up with a MAC based init system[2] but that's not
> really to keep things up to date.
>
> Last thing I know of is the approach to convert folders into opkg
> install-able packages[3], so whenever there is a new configuration all
> pre-configured routers would install it via opkg. However this would
> require an opkg cron on client device and building the config-packages
> appear to be quite some overhead. On the other side it handles
> authentication via usign keys.
>
> Anyway, please recommend me a better way which I'm not aware of!
>
> Best,
> Paul
>
> [0]: https://www.ansible.com/
> [1]: https://cloud-init.io/
> [2]: https://github.com/openwrt/packages/pull/6071
> [3]: https://github.com/libremesh/network-profiles-builder
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000c32c5705a2ce36ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>/etc in git + Shell script + Ansible<br></div><div><b=
r></div><div>I wrote a shell script that drops lock files in /etc/setup whe=
n that function has successfully run without error.</div><div>If the lock f=
ile exists (test -f &quot;/etc/setup/${lockname}&quot;), the function doesn=
&#39;t run again whenever I re-run the shell script.</div><div>I include /e=
tc/setup/ and /etc/bin/ in /etc/sysupgrade.conf.</div><div><br></div><div>I=
 haven&#39;t yet hooked post-upgrade somehow so that the setup shell script=
 runs automatically after upgrading OpenWRT firmware.</div><div>I could pro=
bably check /etc/openwrt_release and /etc/openwrt_version to determine whet=
her the version has changed.<br></div><div><a href=3D"https://openwrt.org/d=
ocs/techref/sysupgrade">https://openwrt.org/docs/techref/sysupgrade</a></di=
v><div><br></div><div><a href=3D"https://github.com/gekmihesg/ansible-openw=
rt">https://github.com/gekmihesg/ansible-openwrt</a></div><div>&gt; Manage =
OpenWRT and derivatives with Ansible but without Python <br></div><div><br>=
</div><div>This runs an OpenWRT docker container with an interactive shell =
that IDK how to kill without killing the PID or various incantations of Ctr=
l-C/Ctrl-D/Ctrl-Z:<br></div><div><br></div><div>docker image pull openwrtor=
g/rootfs<br></div><div>docker run --rm -it --name=3Dopenwrt1 -h hostname --=
cap-add NET_ADMIN -v $(readlink -e ./setup_openwrt.sh):/setup_openwrt.sh:ro=
 -v $(readlink -e ./entrypoint.sh):/entrypoint.sh:ro openwrtorg/rootfs</div=
><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Wed, Apr 8, 2020 at 5:08 PM Paul Spooren =
&lt;<a href=3D"mailto:mail@aparcar.org">mail@aparcar.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all,<br>
<br>
I was wondering if there are some best practices for configuration<br>
management of OpenWrt devices. I understand that it is fairly easy to<br>
get/restore a backup of the etc/config folder, but though maybe there<br>
are some smarter ways.<br>
<br>
Ideally a local state (e.g. git repository) would deploy multiple<br>
devices and automatically update them via a command (or even cron).<br>
<br>
Other projects came up with solutions which seem to heavy for common<br>
WiFi routers. Ansible[0] is great and all, however requires plenty of<br>
Python to work conveniently. Then cloud-init[1] is Python as well, I<br>
think even heavier on the client side than Ansible and also doesn&#39;t<br>
seem to be the right use case.<br>
<br>
Some time ago I came up with a MAC based init system[2] but that&#39;s not<=
br>
really to keep things up to date.<br>
<br>
Last thing I know of is the approach to convert folders into opkg<br>
install-able packages[3], so whenever there is a new configuration all<br>
pre-configured routers would install it via opkg. However this would<br>
require an opkg cron on client device and building the config-packages<br>
appear to be quite some overhead. On the other side it handles<br>
authentication via usign keys.<br>
<br>
Anyway, please recommend me a better way which I&#39;m not aware of!<br>
<br>
Best,<br>
Paul<br>
<br>
[0]: <a href=3D"https://www.ansible.com/" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.ansible.com/</a><br>
[1]: <a href=3D"https://cloud-init.io/" rel=3D"noreferrer" target=3D"_blank=
">https://cloud-init.io/</a><br>
[2]: <a href=3D"https://github.com/openwrt/packages/pull/6071" rel=3D"noref=
errer" target=3D"_blank">https://github.com/openwrt/packages/pull/6071</a><=
br>
[3]: <a href=3D"https://github.com/libremesh/network-profiles-builder" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/libremesh/network-prof=
iles-builder</a><br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--000000000000c32c5705a2ce36ec--


--===============8424385826415110834==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8424385826415110834==--

