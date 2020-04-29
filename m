Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8D21BD4A6
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 08:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MGx13piFJofzw9my57xaTV1zIrgqzC1jN2Bp4gXzZTg=; b=W3W
	pnnV1Wn5JosRWmmVeC5aOIVEOivKF9i3pPT1DgjaX9RJisvX+bhJvt/mtSDErZ/QsRDOpnfV+W4zu
	JPk4A9gaEZ02tXPj2H+AyqF1e4vxDjo7V3xFBrtwbR6yPKbXWPKVFwLal0a/wGlncyGwnE2janZfa
	XpsMlrLtVihRAcTTHOiNxgBZc3jbjUruExmRVBEJImZtIo31US15jB0KvM3RepBv6GUpi4WB6jPwi
	hV3aNRSayzaZtRo4JCmyCfR9E7JiUsUM4kpaJm7lPMZZh7mFbZgeq7CNHipOwGELEUCXUZk2zlBYe
	NHTniXF9ZjjfNlgnb5SS9R1Bu90ib5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTgEX-0001g5-6L; Wed, 29 Apr 2020 06:30:13 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTgEG-0001ev-4D
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 06:29:57 +0000
Received: by mail-ed1-x52c.google.com with SMTP id w2so613950edx.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Apr 2020 23:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=e5UjtJ1GgPXGoP0t3YGl/nSi140hZozf23ZLAsJz7ds=;
 b=H1k8/WLNO2JAQsSKTwCQHlAmR1Agp8aWy7isT398253WfKAVVPV6Uwn5uUxdieNIu7
 Vk+DZKbyna5etJw8fg4+K6V0SU70FUs9TF8YoiLKSKlt4SXxsp9aKXVe5TFjYQqOkaUs
 2vcxJhAr3XpuVKvNMhk2plbypg5Wq0vlmS1XttSqETl80TptMEv3Xq+UTCkXHDRLNiP0
 h7q9lS4bHYgCYPzZPSdIAJAIYKwno4aku1c3uHgFPLu4hZjFarmozXwGcL9UHA6je302
 FB0eQ2RKHi3BrdMK5/4xsSWihR/i5obe8+oHHRavdqE3gDafc+3e6eqEnJH/P4ccTeeI
 o8FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=e5UjtJ1GgPXGoP0t3YGl/nSi140hZozf23ZLAsJz7ds=;
 b=LtIS9IvZVrXnUbZu9Owh9cjJODNnX7AcjWVMap+HfO/lwuVIAQnSWiTgTft2fWFFRC
 i3HiA+/A8tm5qazbZooTukLJQ9nkH9oMxHLjcWjhBrBqkVNXN+lNhq4EVMRhmG+TKIoe
 OcVKl9BscmbWS4tG6rUEAbB+vkuSiQgKXSt4+n2Avv9oXkcpkv7IC/4AtNTKu0o2p2+Z
 0ONACaaRXVqA20aVSRRxCYPLowislSbNLxnyy9DtsSn/k6qcLsketxvgItGWYrU4G9sL
 dMmzzG+aQ60bLCDjQ6C6TzBTQVzT5ZSz3MtR2fiuu7L1wYsxvgN294XPuv50QFWJE24H
 6mhg==
X-Gm-Message-State: AGi0Pube7bwmEGMyTD0SHs/7AyJ5l7jTaVXzL8QEErY8MeeV0AMHsCsP
 mTxa1QRUPOTWfpxiYWIwr6EA1xX8/IWlk7PaQB19x0bmV/Y=
X-Google-Smtp-Source: APiQypKw88IjnFsDCbqBdq1tePMZWr967im0c4WAqOEvNjuF9phrEVQ3nXN+n4+iUI3K5pGBBf9hWUy9DJ3hCl12UYA=
X-Received: by 2002:a05:6402:310b:: with SMTP id
 dc11mr1034235edb.143.1588141793467; 
 Tue, 28 Apr 2020 23:29:53 -0700 (PDT)
MIME-Version: 1.0
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Wed, 29 Apr 2020 15:29:41 +0900
Message-ID: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_232956_170925_B6D3CFFE 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [ModemManager] How can I make ModemManager work
 right?
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
Content-Type: multipart/mixed; boundary="===============2339252840113220452=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2339252840113220452==
Content-Type: multipart/alternative; boundary="00000000000073e1be05a46813fc"

--00000000000073e1be05a46813fc
Content-Type: text/plain; charset="UTF-8"

Hello,
Thanks to many people in this list, I was able to find ModemManager and
I've tried applying it.

==== Testing environment ====

Target Model        : MediaTek MT7622 AC4300rfb1 board
Firmware Version : LEDE Reboot 17.01-SNAPSHOT unknown / LuCI
Kernel Version      : 4.4.124
Modem                 : HUCOM HM-900
ModemManager
Version                 : 1.12.8
menuconfig          : (QMI on, MBIM off)
git clone URL        :
https://github.com/openwrt/packages/tree/master/net/modemmanager

Noted Device Files : Those files and paths are noted/watched
qmichannel                                            : /dev/cdc-wdm0
usbnet_adapter                                      : /sys/class/net/wwan0
/sys/bus/usb/devices/2-1/manufacturer : QCOM
/sys/bus/usb/devices/2-1/idVendor        :05C6
/sys/bus/usb/devices/2-1/idProduct       :90db
/sys/bus/usb/devices/2-1/speed             :5000
/sys/bus/usb/devices/2-1/product          :SDXPRAIRIE-MTP _SN:B02CE51B
/sys/bus/usb/devices/2-1/version           :3.20
/sys/bus/usb/devices/2-1:1.2/net/wwan0
/sys/bus/usb/devices/2-1:1.2/net/wwan0/device/driver
/sys/bus/usb/devices/2-1:1.2/net/wwan0/device
/sys/bus/usb/devices/2-1:1.2/usbmisc/cdc-wdm0
/sys/devices/platform/1a0c0000.usb/usb2/2-1/2-1:1.2

Kernel modules watched via lsmod
cdc_wdm                 8821  1 qmi_wwan
qmi_wwan                6252  0
usbcore               153512 20
option,usb_wwan,qmi_wwan,cdc_ncm,cdc_ether,usbserial,usbnet,usblp,cdc_wdm,cdc_acm,usb_storage,xhci_mtk,xhci_plat_hcd,xhci_pci,xhci_hcd,uhci_hcd,ohci_platform,ohci_hcd,ehci_platform,ehci_hcd
usbnet                 19027  3 qmi_wwan,cdc_ncm,cdc_ether

Above is original environment.
On this circumstances, I disabled CM provided from modem provider : hucom-cm
And I added one configuration section into the bottom of
/etc/config/network :
config interface 'broadband'
        option device '/sys/devices/platform/1a0c0000.usb/usb2/2-1/2-1:1.2'
        option proto 'modemmanager'
        option apn '5g-internet.sktelecom.com'
        option username ''
        option password ''
        option pincode ''
        option lowpower '1'

Under these settings, I confirmed that
- hucom-cm is disabled
- ModemManager is alive
 4430 root      229m D    /usr/sbin/ModemManager

The wwan0 is not shown from ifconfig and ping 8.8.8.8 fails saying Network
is unreachable.
So, My first trying to utilize MM seemed to be failed.

Originally hucom-cm sets bridge mode like shown below:
BRIDGE_MODE_FILE : /sys/module/qmi_wwan/parameters/bridge_mode
BRIDGE_IPV4_FILE    : /sys/module/qmi_wwan/parameters/bridge_ipv4
But under ModemManager these files are not shown.

And I've found many plugin libraries under /usr/lib/ModemManager:
libmm-plugin-altair-lte.so     libmm-plugin-mtk.so
 libmm-plugin-thuraya.so

Could someone help me?

Do I need to look deeper into ModemManager?
Do I need to implement new plugin library for our product?
Or do I need to forget about ModemManager?

My already given hucom-cm anyway works. It brings data via wwan0 and
establish network interface wwan0.
Problem is that hucom-cm sets up firewall rules and routing settings
redundantly and unnecessarily. So I can make it not to do these unneeded
settings. This way would be good approach I believe.
But we'd like to make our product indepecntant from specific modem. I
guessed that opensource ModemManager infrastructure would give us some sort
of independence from specific modem and in other words it would give some
abstraction..

I am not sure of anything. Could someone give me some light so that I can
find the best way to go?

Additional question : If I write our own logic as a plugin library of
ModemManager, wouldn't it necessarily have to stick to GPL? Can we apply
commercial license for the plugin?

Thank you very much in advance.
Jeonghum

--00000000000073e1be05a46813fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>Thanks to many people in this list, I was able =
to find ModemManager and I&#39;ve tried applying it.</div><div><br></div><d=
iv>=3D=3D=3D=3D Testing environment =3D=3D=3D=3D</div><div><br></div><div>T=
arget Model=C2=A0 =C2=A0 =C2=A0 =C2=A0 : MediaTek MT7622 AC4300rfb1 board<b=
r></div><div>Firmware Version : LEDE Reboot 17.01-SNAPSHOT unknown / LuCI</=
div><div>Kernel Version=C2=A0 =C2=A0 =C2=A0 : 4.4.124</div><div>Modem=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: HUCOM HM-900<br><=
/div><div>ModemManager<br></div><div>Version=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 1.12.8<br></div><div>menuconfig=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 : (QMI on, MBIM off)</div><div>git clone URL=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 :=C2=A0<a href=3D"https://github.com/openwrt/packages=
/tree/master/net/modemmanager">https://github.com/openwrt/packages/tree/mas=
ter/net/modemmanager</a><br></div><div><br></div><div>Noted Device Files : =
Those files and paths are noted/watched</div><div>qmichannel=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /dev/c=
dc-wdm0</div><div>usbnet_adapter=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 : /sys/class/net/wwan0</div><div>/sys/bus/usb/devices/2-1=
/manufacturer : QCOM<br></div><div>/sys/bus/usb/devices/2-1/idVendor=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 :05C6</div><div>

/sys/bus/usb/devices/2-1/idProduct=C2=A0 =C2=A0 =C2=A0 =C2=A0:90db</div><di=
v>

/sys/bus/usb/devices/2-1/speed=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0:5000</div><div>

/sys/bus/usb/devices/2-1/product=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :SDXPRAI=
RIE-MTP=C2=A0_SN:B02CE51B</div><div>/sys/bus/usb/devices/2-1/version=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:3.20</div><div>/sys/bus/usb/devices/2-1:=
1.2/net/wwan0<br></div><div><div>/sys/bus/usb/devices/2-1:1.2/net/wwan0/dev=
ice/driver<br></div><div><div>/sys/bus/usb/devices/2-1:1.2/net/wwan0/device=
</div></div><div></div></div><div><div><div>/sys/bus/usb/devices/2-1:1.2/us=
bmisc/cdc-wdm0<br></div><div><div></div></div></div><div>/sys/devices/platf=
orm/1a0c0000.usb/usb2/2-1/2-1:1.2<br></div><div></div></div><div><br></div>=
<div>Kernel modules watched via lsmod</div><div>cdc_wdm =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 8821 =C2=A01 qmi_wwan<br></div><div>=
qmi_wwan =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A06252 =C2=A0=
0<br></div><div>usbcore =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 15=
3512 20 option,usb_wwan,qmi_wwan,cdc_ncm,cdc_ether,usbserial,usbnet,usblp,c=
dc_wdm,cdc_acm,usb_storage,xhci_mtk,xhci_plat_hcd,xhci_pci,xhci_hcd,uhci_hc=
d,ohci_platform,ohci_hcd,ehci_platform,ehci_hcd<br></div><div>usbnet =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 19027 =C2=A03 qmi_wwan,cd=
c_ncm,cdc_ether<br></div><div><br></div><div>Above=C2=A0is original environ=
ment.</div><div>On this circumstances, I disabled CM provided from modem pr=
ovider : hucom-cm</div><div>And I added one configuration section into the =
bottom of /etc/config/network :</div><div>config interface &#39;broadband&#=
39;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option device &#39;/sys/devices/p=
latform/1a0c0000.usb/usb2/2-1/2-1:1.2&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 o=
ption proto &#39;modemmanager&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option ap=
n &#39;<a href=3D"http://5g-internet.sktelecom.com">5g-internet.sktelecom.c=
om</a>&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option username &#39;&#39;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 option password &#39;&#39;<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 option pincode &#39;&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option =
lowpower &#39;1&#39;<br></div><div><br></div><div>Under these settings, I c=
onfirmed that</div><div>- hucom-cm is disabled</div><div>- ModemManager is =
alive</div><div>=C2=A04430 root =C2=A0 =C2=A0 =C2=A0229m D =C2=A0 =C2=A0/us=
r/sbin/ModemManager<br></div><div><br></div><div>The wwan0 is not shown fro=
m ifconfig and ping 8.8.8.8 fails saying Network is unreachable.</div><div>=
So, My first trying to utilize MM seemed to be failed.</div><div><br></div>=
<div>Originally hucom-cm sets bridge mode like shown below:</div><div><div>=
BRIDGE_MODE_FILE : /sys/module/qmi_wwan/parameters/bridge_mode</div><div>BR=
IDGE_IPV4_FILE=C2=A0 =C2=A0 : /sys/module/qmi_wwan/parameters/bridge_ipv4</=
div><div>But under ModemManager these files are not shown.<br></div><div><b=
r></div><div>And I&#39;ve found many plugin libraries under /usr/lib/ModemM=
anager:</div><div>libmm-plugin-altair-lte.so =C2=A0 =C2=A0 libmm-plugin-mtk=
.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libmm-plugin-thuraya.so<br></d=
iv><div><br></div><div>Could someone help me?</div><div><br></div><div>Do I=
 need to look deeper into ModemManager?</div><div>Do I need to implement ne=
w plugin library for our product?</div><div>Or do I need to forget about Mo=
demManager?</div><div><br></div><div>My already given hucom-cm anyway works=
. It brings data via wwan0 and establish network interface wwan0.</div><div=
>Problem is that hucom-cm sets up firewall rules and routing settings redun=
dantly and unnecessarily. So I can make it not to do these unneeded setting=
s. This way would be good approach I believe.</div><div>But we&#39;d like t=
o make our product indepecntant=C2=A0from specific modem. I guessed that op=
ensource ModemManager infrastructure would give us some sort of independenc=
e from specific modem and in other words it would give some abstraction..</=
div><div><br></div><div>I am not sure of anything. Could someone give me so=
me light so=C2=A0that I can find the best way=C2=A0to go?</div><div><br></d=
iv><div>Additional question : If I write our own logic as a plugin library =
of ModemManager, wouldn&#39;t it necessarily have to stick to GPL? Can we a=
pply commercial license for the plugin?</div><div><br></div><div>Thank you =
very much in advance.</div><div>Jeonghum</div><div><br></div><div><br></div=
><div><br></div><div></div></div></div>

--00000000000073e1be05a46813fc--


--===============2339252840113220452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2339252840113220452==--

