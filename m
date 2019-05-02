Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7887111E9
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 05:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bk1jvlY+1cOxGGLYbtmrxoRMbG0LNLiwU18OGN1VU48=; b=aVeQc4NlpcSLE6IEHWIehQupp
	5gow47VVsL4QAcDNBgljsn4Zq0WBWA1dJFAD+nWS2LEzkI1Y62e0JeCv/Zc0IimxpfOjSo+R41qQX
	6A740qOik6bNTLn7Xr8XFoMto694xZOIGTJPUz+QuV7hRk9cohv4vVHqV6qafGkerP4TNzpU72nIz
	HJvgWGiOGWBcxisRRPyiBPCVu0qcEgVPYqMDJKSTvauIAeK2JNC6/5kqj5epspz7Zy1NPvrtyemJy
	o5CR2KxyH+9vhRrEQpy50eIejBB+6oye9YNsVeqPJZ/k0kx2ZehVU0i3fq4rneW2dqtyhkP3+NoWL
	o1Odiz6tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM2Xp-0007I4-Gk; Thu, 02 May 2019 03:38:01 +0000
Received: from mail-vs1-xe2a.google.com ([2607:f8b0:4864:20::e2a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM2Xh-0007HY-NK
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 03:37:55 +0000
Received: by mail-vs1-xe2a.google.com with SMTP id j184so536268vsd.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 May 2019 20:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B8BxGFG/y7RoMNh61MFXL5SS4FJQeoVKIwZ2Nwwh7eo=;
 b=LBl8+dKYcl16XRMhcg9UuVDIgzMEhpkTbHflI6yCj0hP2864rWlTLEB0weZ1DfFrqq
 V/46kLh/5JaOxzoR8rK6P3LJv9mj+vMD6lsLSI1bu09zzmjAX4HVNhR9ckB8TY56fvcq
 PJ0/+hyLz40zPDHmehQtKUwSnbokl7UOfPHeFdvlpPDGIkHlXFlsKNDgh5GjrMnDnHsJ
 2d6DlxtbLW7oCHr4Wg6B1O4REdBCisqKaujZCRZqOH7vBHxhwMX/fLbxzSDeWboud7bF
 dO6TTcICzEU0Uzj8LjIX2TFbeYdBRXut9t7YksAOszsfCKKlxqUR2oH45MT/Pinrk3re
 Nplw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B8BxGFG/y7RoMNh61MFXL5SS4FJQeoVKIwZ2Nwwh7eo=;
 b=ldas1xklAwnqFwMtvziqoTicQjwhUjt0SkK+Ggd0IVcCaUbYo0cNuqsetDnkLJEt2q
 i/8pfKKrBo2jayZ4wHZ/HR3wV6UziOON0BK94wSrz9uIUFm02gqlLNVRIGAVBOO+TQeE
 dprVIHPdRbLm08cI9clFDEPtg4AAEffjbLR1O7sLdHz6Vl352LladTY1P95IaPf9GTAW
 dNG0XknmlUNr+5dLU/QYKqIclfjTI5Xs//9GF//fioazM14CqBLbojsijoVCnPPuwa93
 SQ922vVEh3oRS+r1liNsvPD1JFAG+NTiQ0gBZYDI3rhyY0T91NkjNirOxfqp4sEBXBi/
 g2eA==
X-Gm-Message-State: APjAAAVF31ip5z+4Wg7shUXSziizamq6JhZfwQAkAxPHnryn9z19aLt5
 gwlzaTS+A3FxJbUhmcYpFfNt1B3vCq5YP+01wA==
X-Google-Smtp-Source: APXvYqzp5fQEC0ZvOco2CZ6cQAKa0A+xfhgYkjfhk68GVCu2ql3TPUYgmh4SGiLz/qRDaAR4spx6+u+4PTe/GPhDcyw=
X-Received: by 2002:a67:b343:: with SMTP id b3mr668740vsm.237.1556768270433;
 Wed, 01 May 2019 20:37:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190417134552.9294-1-freifunk@adrianschmutzler.de>
 <3153692.KaT8f5YDfS@debian64>
 <8a272c0b-4f75-df8a-f2a4-f9197ee9f7c4@david-bauer.net>
 <2243041.a4oj9KbRke@debian64>
 <912fd259-fe71-3446-bd05-838bea125163@david-bauer.net>
 <005601d4f900$da3d1760$8eb74620$@adrianschmutzler.de>
 <CABkW7JNC7uNqx+BgH80WAywsXymxEfwzFA+YRSmsYfDiRZDLpg@mail.gmail.com>
 <007201d4ff4e$c6820a10$53861e30$@adrianschmutzler.de>
In-Reply-To: <007201d4ff4e$c6820a10$53861e30$@adrianschmutzler.de>
From: camden lindsay <camden.lindsay+lede@gmail.com>
Date: Wed, 1 May 2019 20:37:39 -0700
Message-ID: <CABkW7JNc+GeMHKna-fWLDDCWND=BhcT7fCgC+NRLkzQLL2gb4A@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_203753_794351_1E739158 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (camden.lindsay[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add SUPPORTED_DEVICES for Archer
 C7 v1/v2
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>, David Bauer <mail@david-bauer.net>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============8581666779349417317=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8581666779349417317==
Content-Type: multipart/alternative; boundary="000000000000c1c43f0587df5b73"

--000000000000c1c43f0587df5b73
Content-Type: text/plain; charset="UTF-8"

Hmmm; well, i've got this; Fresh 'firstboot' on an archer c7 V2, following
version info:
root@LEDE:~# cat /etc/openwrt_*
DISTRIB_ID='LEDE'
DISTRIB_RELEASE='SNAPSHOT'
DISTRIB_REVISION='r3189-12db207'
DISTRIB_CODENAME='reboot'
DISTRIB_TARGET='ar71xx/generic'
DISTRIB_ARCH='mips_24kc'
DISTRIB_DESCRIPTION='LEDE Reboot SNAPSHOT r3189-12db207'
DISTRIB_TAINTS='no-all'
r3189-12db207
root@LEDE:~#

/etc/config/wifi has this in it:
root@LEDE:~# cat /etc/config/wireless

config wifi-device 'radio0'
option type 'mac80211'
option channel '36'
option hwmode '11a'
option path 'pci0000:01/0000:01:00.0'
option htmode 'VHT80'
option disabled '1'

config wifi-iface 'default_radio0'
option device 'radio0'
option network 'lan'
option mode 'ap'
option ssid 'LEDE'
option encryption 'none'

config wifi-device 'radio1'
option type 'mac80211'
option channel '11'
option hwmode '11g'
option path 'platform/qca955x_wmac'
option htmode 'HT20'
option disabled '1'

config wifi-iface 'default_radio1'
option device 'radio1'
option network 'lan'
option mode 'ap'
option ssid 'LEDE'
option encryption 'none'

and
root@LEDE:/sys/class/ieee80211# ls -al /sys/class/ieee80211/
drwxr-xr-x    2 root     root             0 Jan 27 22:39 .
drwxr-xr-x   21 root     root             0 Jan  1  1970 ..
lrwxrwxrwx    1 root     root             0 Jan 27 22:39 phy0 ->
../../devices/pci0000:01/0000:01:00.0/ieee80211/phy0
lrwxrwxrwx    1 root     root             0 Jan 27 22:39 phy1 ->
../../devices/platform/qca955x_wmac/ieee80211/phy1


After upgrading using sysupgrade to stable ar71xx:
http://downloads.openwrt.org/releases/18.06.2/targets/ar71xx/generic/openwrt-18.06.2-ar71xx-generic-archer-c7-v2-squashfs-sysupgrade.bin
root@LEDE:~# cat /etc/openwrt_*
DISTRIB_ID='OpenWrt'
DISTRIB_RELEASE='18.06.2'
DISTRIB_REVISION='r7676-cddd7b4c77'
DISTRIB_TARGET='ar71xx/generic'
DISTRIB_ARCH='mips_24kc'
DISTRIB_DESCRIPTION='OpenWrt 18.06.2 r7676-cddd7b4c77'
DISTRIB_TAINTS=''
r7676-cddd7b4c77
root@LEDE:~#

I should have double checked wireless config but didn't :-/  derp. I'll
rollback to this at the end and post a firstboot'd wireless config from
18.06.2.

PCI paths:
root@LEDE:~# ls -al /sys/class/ieee80211/
drwxr-xr-x    2 root     root             0 Jan 30 12:21 .
drwxr-xr-x   22 root     root             0 Jan  1  1970 ..
lrwxrwxrwx    1 root     root             0 Jan 30 12:21 phy0 ->
../../devices/pci0000:01/0000:01:00.0/ieee80211/phy0
lrwxrwxrwx    1 root     root             0 Jan 30 12:21 phy1 ->
../../devices/platform/qca955x_wmac/ieee80211/phy1

Attempting to sysupgrade to ath79 brings this on:
root@LEDE:~# sysupgrade
/tmp/openwrt-ath79-generic-tplink_archer-c7-v2-squashfs-sysupgrade.bin
Device archer-c7 not supported by this image
Supported devices: tplink,archer-c7-v2
Image check 'fwtool_check_image' failed.
root@LEDE:~#

Forcing upgrade with -f ... After upgrading using sysupgrade to snapshot
ath79:
http://downloads.openwrt.org/snapshots/targets/ath79/generic/openwrt-ath79-generic-tplink_archer-c7-v2-squashfs-sysupgrade.bin

root@LEDE:~# cat /etc/openwrt_*
DISTRIB_ID='OpenWrt'
DISTRIB_RELEASE='SNAPSHOT'
DISTRIB_REVISION='r9915-d6643aca34'
DISTRIB_TARGET='ath79/generic'
DISTRIB_ARCH='mips_24kc'
DISTRIB_DESCRIPTION='OpenWrt SNAPSHOT r9915-d6643aca34'
DISTRIB_TAINTS=''
r9915-d6643aca34
root@LEDE:~#


root@LEDE:~# ls -al /sys/class/ieee80211/
drwxr-xr-x    2 root     root             0 May  1 05:25 .
drwxr-xr-x   24 root     root             0 Jan  1  1970 ..
lrwxrwxrwx    1 root     root             0 May  1 05:25 phy0 ->
../../devices/pci0000:00/0000:00:00.0/ieee80211/phy0
lrwxrwxrwx    1 root     root             0 May  1 05:25 phy1 ->
../../devices/platform/ahb/ahb:apb/18100000.wmac/ieee80211/phy1
root@LEDE:~#

wireless config seems to have both new and old paths..
root@LEDE:~# cat /etc/config/wireless

config wifi-device 'radio0'
option type 'mac80211'
option channel '36'
option hwmode '11a'
option path 'pci0000:01/0000:01:00.0'
option htmode 'VHT80'
option disabled '1'

config wifi-iface 'default_radio0'
option device 'radio0'
option network 'lan'
option mode 'ap'
option ssid 'LEDE'
option encryption 'none'

config wifi-device 'radio1'
option type 'mac80211'
option channel '11'
option hwmode '11g'
option htmode 'HT20'
option disabled '1'
option path 'platform/ahb/ahb:apb/18100000.wmac'

config wifi-iface 'default_radio1'
option device 'radio1'
option network 'lan'
option mode 'ap'
option ssid 'LEDE'
option encryption 'none'

config wifi-device 'radio2'
option type 'mac80211'
option channel '36'
option hwmode '11a'
option path 'pci0000:00/0000:00:00.0'
option htmode 'VHT80'
option disabled '1'

config wifi-iface 'default_radio2'
option device 'radio2'
option network 'lan'
option mode 'ap'
option ssid 'OpenWrt'
option encryption 'none'

root@LEDE:~#


And .. sorry its out of order, after downgrading using sysupgrade -F  to
18.06.2, then firstbooting,see as follows
root@OpenWrt:~# grep 18 /etc/openwrt_*
/etc/openwrt_release:DISTRIB_RELEASE='18.06.2'
/etc/openwrt_release:DISTRIB_DESCRIPTION='OpenWrt 18.06.2 r7676-cddd7b4c77'
root@OpenWrt:~#

root@OpenWrt:~# cat /etc/config/wireless

config wifi-device 'radio0'
option type 'mac80211'
option channel '36'
option hwmode '11a'
option path 'pci0000:01/0000:01:00.0'
option htmode 'VHT80'
option disabled '1'

config wifi-iface 'default_radio0'
option device 'radio0'
option network 'lan'
option mode 'ap'
option ssid 'OpenWrt'
option encryption 'none'

config wifi-device 'radio1'
option type 'mac80211'
option channel '11'
option hwmode '11g'
option path 'platform/qca955x_wmac'
option htmode 'HT20'
option disabled '1'

config wifi-iface 'default_radio1'
option device 'radio1'
option network 'lan'
option mode 'ap'
option ssid 'OpenWrt'
option encryption 'none'

root@OpenWrt:~#




Hope this helps some.  I've never used DTS... Heck, i don't even know which
DTS ya'll are talking about since none of these seem to make sense(
https://en.wikipedia.org/wiki/DTS)... so i'm  not clear on what needs to be
done to test the following... (oh, wait .. device tree source.... still
unsure how to proceed):
"Does anybody want to
> > test what happens if the ath79 C7 v2 DTS enables "pcie0" too? It might
> > work, but it might not (depending on whenever it might end up in a
> > different pci domain like pci0001:00.)."

 c

--000000000000c1c43f0587df5b73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr">Hmmm; well, i&#39;ve got this; Fresh &#39;fir=
stboot&#39; on an archer c7 V2, following version info:<div><div>root@LEDE:=
~# cat /etc/openwrt_*<br></div><div>DISTRIB_ID=3D&#39;LEDE&#39;</div><div>D=
ISTRIB_RELEASE=3D&#39;SNAPSHOT&#39;</div><div>DISTRIB_REVISION=3D&#39;r3189=
-12db207&#39;</div><div>DISTRIB_CODENAME=3D&#39;reboot&#39;</div><div>DISTR=
IB_TARGET=3D&#39;ar71xx/generic&#39;</div><div>DISTRIB_ARCH=3D&#39;mips_24k=
c&#39;</div><div>DISTRIB_DESCRIPTION=3D&#39;LEDE Reboot SNAPSHOT r3189-12db=
207&#39;</div><div>DISTRIB_TAINTS=3D&#39;no-all&#39;</div><div>r3189-12db20=
7</div><div>root@LEDE:~#=C2=A0</div><div><br></div><div>/etc/config/wifi ha=
s this in it:</div><div><div>root@LEDE:~# cat /etc/config/wireless=C2=A0</d=
iv><div><br></div><div>config wifi-device &#39;radio0&#39;</div><div><span =
style=3D"white-space:pre">	</span>option type &#39;mac80211&#39;</div><div>=
<span style=3D"white-space:pre">	</span>option channel &#39;36&#39;</div><d=
iv><span style=3D"white-space:pre">	</span>option hwmode &#39;11a&#39;</div=
><div><span style=3D"white-space:pre">	</span>option path &#39;pci0000:01/0=
000:01:00.0&#39;</div><div><span style=3D"white-space:pre">	</span>option h=
tmode &#39;VHT80&#39;</div><div><span style=3D"white-space:pre">	</span>opt=
ion disabled &#39;1&#39;</div><div><br></div><div>config wifi-iface &#39;de=
fault_radio0&#39;</div><div><span style=3D"white-space:pre">	</span>option =
device &#39;radio0&#39;</div><div><span style=3D"white-space:pre">	</span>o=
ption network &#39;lan&#39;</div><div><span style=3D"white-space:pre">	</sp=
an>option mode &#39;ap&#39;</div><div><span style=3D"white-space:pre">	</sp=
an>option ssid &#39;LEDE&#39;</div><div><span style=3D"white-space:pre">	</=
span>option encryption &#39;none&#39;</div><div><br></div><div>config wifi-=
device &#39;radio1&#39;</div><div><span style=3D"white-space:pre">	</span>o=
ption type &#39;mac80211&#39;</div><div><span style=3D"white-space:pre">	</=
span>option channel &#39;11&#39;</div><div><span style=3D"white-space:pre">=
	</span>option hwmode &#39;11g&#39;</div><div><span style=3D"white-space:pr=
e">	</span>option path &#39;platform/qca955x_wmac&#39;</div><div><span styl=
e=3D"white-space:pre">	</span>option htmode &#39;HT20&#39;</div><div><span =
style=3D"white-space:pre">	</span>option disabled &#39;1&#39;</div><div><br=
></div><div>config wifi-iface &#39;default_radio1&#39;</div><div><span styl=
e=3D"white-space:pre">	</span>option device &#39;radio1&#39;</div><div><spa=
n style=3D"white-space:pre">	</span>option network &#39;lan&#39;</div><div>=
<span style=3D"white-space:pre">	</span>option mode &#39;ap&#39;</div><div>=
<span style=3D"white-space:pre">	</span>option ssid &#39;LEDE&#39;</div><di=
v><span style=3D"white-space:pre">	</span>option encryption &#39;none&#39;<=
/div></div><div><br></div><div>and=C2=A0</div><div><div>root@LEDE:/sys/clas=
s/ieee80211# ls -al /sys/class/ieee80211/</div><div>drwxr-xr-x=C2=A0 =C2=A0=
 2 root=C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00 Jan 27 22:39 .</div><div>drwxr-xr-x=C2=A0 =C2=A021 root=C2=A0 =C2=
=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 Jan=C2=A0 1=
=C2=A0 1970 ..</div><div>lrwxrwxrwx=C2=A0 =C2=A0 1 root=C2=A0 =C2=A0 =C2=A0=
root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 Jan 27 22:39 phy0 -&g=
t; ../../devices/pci0000:01/0000:01:00.0/ieee80211/phy0</div><div>lrwxrwxrw=
x=C2=A0 =C2=A0 1 root=C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00 Jan 27 22:39 phy1 -&gt; ../../devices/platform/qca955=
x_wmac/ieee80211/phy1</div></div><div><br></div><div><br></div><div>After u=
pgrading using sysupgrade to stable ar71xx: <a href=3D"http://downloads.ope=
nwrt.org/releases/18.06.2/targets/ar71xx/generic/openwrt-18.06.2-ar71xx-gen=
eric-archer-c7-v2-squashfs-sysupgrade.bin">http://downloads.openwrt.org/rel=
eases/18.06.2/targets/ar71xx/generic/openwrt-18.06.2-ar71xx-generic-archer-=
c7-v2-squashfs-sysupgrade.bin</a></div><div><div>root@LEDE:~# cat /etc/open=
wrt_*</div><div>DISTRIB_ID=3D&#39;OpenWrt&#39;</div><div>DISTRIB_RELEASE=3D=
&#39;18.06.2&#39;</div><div>DISTRIB_REVISION=3D&#39;r7676-cddd7b4c77&#39;</=
div><div>DISTRIB_TARGET=3D&#39;ar71xx/generic&#39;</div><div>DISTRIB_ARCH=
=3D&#39;mips_24kc&#39;</div><div>DISTRIB_DESCRIPTION=3D&#39;OpenWrt 18.06.2=
 r7676-cddd7b4c77&#39;</div><div>DISTRIB_TAINTS=3D&#39;&#39;</div><div>r767=
6-cddd7b4c77</div><div>root@LEDE:~#=C2=A0</div></div><div><br></div><div>I =
should have double checked wireless config but didn&#39;t :-/=C2=A0 derp. I=
&#39;ll rollback to this at the end and post a firstboot&#39;d wireless con=
fig from 18.06.2.</div><div><br></div><div>PCI paths:</div><div><div>root@L=
EDE:~# ls -al /sys/class/ieee80211/</div><div>drwxr-xr-x=C2=A0 =C2=A0 2 roo=
t=C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =
Jan 30 12:21 .</div><div>drwxr-xr-x=C2=A0 =C2=A022 root=C2=A0 =C2=A0 =C2=A0=
root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 Jan=C2=A0 1=C2=A0 197=
0 ..</div><div>lrwxrwxrwx=C2=A0 =C2=A0 1 root=C2=A0 =C2=A0 =C2=A0root=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 Jan 30 12:21 phy0 -&gt; ../../d=
evices/pci0000:01/0000:01:00.0/ieee80211/phy0</div><div>lrwxrwxrwx=C2=A0 =
=C2=A0 1 root=C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00 Jan 30 12:21 phy1 -&gt; ../../devices/platform/qca955x_wmac/iee=
e80211/phy1</div><div><br></div></div><div>Attempting to sysupgrade to ath7=
9 brings this on:</div><div><div>root@LEDE:~# sysupgrade /tmp/openwrt-ath79=
-generic-tplink_archer-c7-v2-squashfs-sysupgrade.bin=C2=A0</div><div>Device=
 archer-c7 not supported by this image</div><div>Supported devices: tplink,=
archer-c7-v2</div><div>Image check &#39;fwtool_check_image&#39; failed.</di=
v><div>root@LEDE:~#=C2=A0</div></div><div><br></div><div>Forcing upgrade wi=
th -f ... After upgrading using sysupgrade to snapshot ath79:</div><div><a =
href=3D"http://downloads.openwrt.org/snapshots/targets/ath79/generic/openwr=
t-ath79-generic-tplink_archer-c7-v2-squashfs-sysupgrade.bin">http://downloa=
ds.openwrt.org/snapshots/targets/ath79/generic/openwrt-ath79-generic-tplink=
_archer-c7-v2-squashfs-sysupgrade.bin</a><br></div><div><br></div><div><div=
>root@LEDE:~# cat /etc/openwrt_*</div><div>DISTRIB_ID=3D&#39;OpenWrt&#39;</=
div><div>DISTRIB_RELEASE=3D&#39;SNAPSHOT&#39;</div><div>DISTRIB_REVISION=3D=
&#39;r9915-d6643aca34&#39;</div><div>DISTRIB_TARGET=3D&#39;ath79/generic&#3=
9;</div><div>DISTRIB_ARCH=3D&#39;mips_24kc&#39;</div><div>DISTRIB_DESCRIPTI=
ON=3D&#39;OpenWrt SNAPSHOT r9915-d6643aca34&#39;</div><div>DISTRIB_TAINTS=
=3D&#39;&#39;</div><div>r9915-d6643aca34</div><div>root@LEDE:~#=C2=A0</div>=
</div><div><br></div><div><br></div><div><div>root@LEDE:~# ls -al /sys/clas=
s/ieee80211/</div><div>drwxr-xr-x=C2=A0 =C2=A0 2 root=C2=A0 =C2=A0 =C2=A0ro=
ot=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 May=C2=A0 1 05:25 .</di=
v><div>drwxr-xr-x=C2=A0 =C2=A024 root=C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 Jan=C2=A0 1=C2=A0 1970 ..</div><div>lrw=
xrwxrwx=C2=A0 =C2=A0 1 root=C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 May=C2=A0 1 05:25 phy0 -&gt; ../../devices/pci000=
0:00/0000:00:00.0/ieee80211/phy0</div><div>lrwxrwxrwx=C2=A0 =C2=A0 1 root=
=C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 M=
ay=C2=A0 1 05:25 phy1 -&gt; ../../devices/platform/ahb/ahb:apb/18100000.wma=
c/ieee80211/phy1</div><div>root@LEDE:~#=C2=A0</div></div><div><br></div><di=
v>wireless config seems to have both new and old paths..</div></div><div><d=
iv>root@LEDE:~# cat /etc/config/wireless=C2=A0</div><div><br></div><div>con=
fig wifi-device &#39;radio0&#39;</div><div><span style=3D"white-space:pre">=
	</span>option type &#39;mac80211&#39;</div><div><span style=3D"white-space=
:pre">	</span>option channel &#39;36&#39;</div><div><span style=3D"white-sp=
ace:pre">	</span>option hwmode &#39;11a&#39;</div><div><span style=3D"white=
-space:pre">	</span>option path &#39;pci0000:01/0000:01:00.0&#39;</div><div=
><span style=3D"white-space:pre">	</span>option htmode &#39;VHT80&#39;</div=
><div><span style=3D"white-space:pre">	</span>option disabled &#39;1&#39;</=
div><div><br></div><div>config wifi-iface &#39;default_radio0&#39;</div><di=
v><span style=3D"white-space:pre">	</span>option device &#39;radio0&#39;</d=
iv><div><span style=3D"white-space:pre">	</span>option network &#39;lan&#39=
;</div><div><span style=3D"white-space:pre">	</span>option mode &#39;ap&#39=
;</div><div><span style=3D"white-space:pre">	</span>option ssid &#39;LEDE&#=
39;</div><div><span style=3D"white-space:pre">	</span>option encryption &#3=
9;none&#39;</div><div><br></div><div>config wifi-device &#39;radio1&#39;</d=
iv><div><span style=3D"white-space:pre">	</span>option type &#39;mac80211&#=
39;</div><div><span style=3D"white-space:pre">	</span>option channel &#39;1=
1&#39;</div><div><span style=3D"white-space:pre">	</span>option hwmode &#39=
;11g&#39;</div><div><span style=3D"white-space:pre">	</span>option htmode &=
#39;HT20&#39;</div><div><span style=3D"white-space:pre">	</span>option disa=
bled &#39;1&#39;</div><div><span style=3D"white-space:pre">	</span>option p=
ath &#39;platform/ahb/ahb:apb/18100000.wmac&#39;</div><div><br></div><div>c=
onfig wifi-iface &#39;default_radio1&#39;</div><div><span style=3D"white-sp=
ace:pre">	</span>option device &#39;radio1&#39;</div><div><span style=3D"wh=
ite-space:pre">	</span>option network &#39;lan&#39;</div><div><span style=
=3D"white-space:pre">	</span>option mode &#39;ap&#39;</div><div><span style=
=3D"white-space:pre">	</span>option ssid &#39;LEDE&#39;</div><div><span sty=
le=3D"white-space:pre">	</span>option encryption &#39;none&#39;</div><div><=
br></div><div>config wifi-device &#39;radio2&#39;</div><div><span style=3D"=
white-space:pre">	</span>option type &#39;mac80211&#39;</div><div><span sty=
le=3D"white-space:pre">	</span>option channel &#39;36&#39;</div><div><span =
style=3D"white-space:pre">	</span>option hwmode &#39;11a&#39;</div><div><sp=
an style=3D"white-space:pre">	</span>option path &#39;pci0000:00/0000:00:00=
.0&#39;</div><div><span style=3D"white-space:pre">	</span>option htmode &#3=
9;VHT80&#39;</div><div><span style=3D"white-space:pre">	</span>option disab=
led &#39;1&#39;</div><div><br></div><div>config wifi-iface &#39;default_rad=
io2&#39;</div><div><span style=3D"white-space:pre">	</span>option device &#=
39;radio2&#39;</div><div><span style=3D"white-space:pre">	</span>option net=
work &#39;lan&#39;</div><div><span style=3D"white-space:pre">	</span>option=
 mode &#39;ap&#39;</div><div><span style=3D"white-space:pre">	</span>option=
 ssid &#39;OpenWrt&#39;</div><div><span style=3D"white-space:pre">	</span>o=
ption encryption &#39;none&#39;</div><div><br></div><div>root@LEDE:~#=C2=A0=
</div><div><br></div></div><div><br></div><div>And .. sorry its out of orde=
r, after downgrading using sysupgrade -F=C2=A0 to 18.06.2, then firstbootin=
g,see as follows</div><div>root@OpenWrt:~# grep 18 /etc/openwrt_*</div><div=
>/etc/openwrt_release:DISTRIB_RELEASE=3D&#39;18.06.2&#39;</div><div>/etc/op=
enwrt_release:DISTRIB_DESCRIPTION=3D&#39;OpenWrt 18.06.2 r7676-cddd7b4c77&#=
39;</div><div>root@OpenWrt:~#=C2=A0</div><div><br></div><div>root@OpenWrt:~=
# cat /etc/config/wireless=C2=A0</div><div><br></div><div>config wifi-devic=
e &#39;radio0&#39;</div><div><span style=3D"white-space:pre">	</span>option=
 type &#39;mac80211&#39;</div><div><span style=3D"white-space:pre">	</span>=
option channel &#39;36&#39;</div><div><span style=3D"white-space:pre">	</sp=
an>option hwmode &#39;11a&#39;</div><div><span style=3D"white-space:pre">	<=
/span>option path &#39;pci0000:01/0000:01:00.0&#39;</div><div><span style=
=3D"white-space:pre">	</span>option htmode &#39;VHT80&#39;</div><div><span =
style=3D"white-space:pre">	</span>option disabled &#39;1&#39;</div><div><br=
></div><div>config wifi-iface &#39;default_radio0&#39;</div><div><span styl=
e=3D"white-space:pre">	</span>option device &#39;radio0&#39;</div><div><spa=
n style=3D"white-space:pre">	</span>option network &#39;lan&#39;</div><div>=
<span style=3D"white-space:pre">	</span>option mode &#39;ap&#39;</div><div>=
<span style=3D"white-space:pre">	</span>option ssid &#39;OpenWrt&#39;</div>=
<div><span style=3D"white-space:pre">	</span>option encryption &#39;none&#3=
9;</div><div><br></div><div>config wifi-device &#39;radio1&#39;</div><div><=
span style=3D"white-space:pre">	</span>option type &#39;mac80211&#39;</div>=
<div><span style=3D"white-space:pre">	</span>option channel &#39;11&#39;</d=
iv><div><span style=3D"white-space:pre">	</span>option hwmode &#39;11g&#39;=
</div><div><span style=3D"white-space:pre">	</span>option path &#39;platfor=
m/qca955x_wmac&#39;</div><div><span style=3D"white-space:pre">	</span>optio=
n htmode &#39;HT20&#39;</div><div><span style=3D"white-space:pre">	</span>o=
ption disabled &#39;1&#39;</div><div><br></div><div>config wifi-iface &#39;=
default_radio1&#39;</div><div><span style=3D"white-space:pre">	</span>optio=
n device &#39;radio1&#39;</div><div><span style=3D"white-space:pre">	</span=
>option network &#39;lan&#39;</div><div><span style=3D"white-space:pre">	</=
span>option mode &#39;ap&#39;</div><div><span style=3D"white-space:pre">	</=
span>option ssid &#39;OpenWrt&#39;</div><div><span style=3D"white-space:pre=
">	</span>option encryption &#39;none&#39;</div><div><br></div><div>root@Op=
enWrt:~#=C2=A0</div><div><br></div><div><br></div><div><br></div><div><br><=
/div><div>Hope this helps some.=C2=A0 I&#39;ve never used DTS... Heck, i do=
n&#39;t even know which DTS ya&#39;ll are talking about since none of these=
 seem to make sense(<a href=3D"https://en.wikipedia.org/wiki/DTS">https://e=
n.wikipedia.org/wiki/DTS</a>)... so i&#39;m=C2=A0 not clear on what needs t=
o be done to test the following... (oh, wait .. device tree source.... stil=
l unsure how to proceed):</div><div>&quot;Does anybody want to</div><div>&g=
t; &gt; test what happens if the ath79 C7 v2 DTS enables &quot;pcie0&quot; =
too? It might</div><div>&gt; &gt; work, but it might not (depending on when=
ever it might end up in a</div><div>&gt; &gt; different pci domain like pci=
0001:00.).&quot;</div><div><br></div><div>=C2=A0c</div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div>

--000000000000c1c43f0587df5b73--


--===============8581666779349417317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8581666779349417317==--

