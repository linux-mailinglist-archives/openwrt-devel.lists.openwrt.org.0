Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 669011A2C5B
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 01:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B/GaYUT+TZ+QShgtUBAIIuYn6zWz2mlW/bpceFRJiMs=; b=t3b
	ZdS8KvrUqXPW0H/Grrc634BDZ5+JZZZkW/OwkQyKCiYo5dSuABi1KfXKlZMYqkgiRUoDQAQ3ZjVw5
	NK4N0C73DCU74czqsDLn/7PXuvppQFgKXkPY8N4/Y37obnq8n+7Bcs+PMmRcSGPJY8uV7n6PHXzry
	gWnjCdxUN/fr6iTqXBwXk6g4iMSCVGgZrEvr4/Wiiij2WRW7q/qZErF+Tqi3r67HRUXpG1KdsNrNI
	JaaTuZQAj9+ifONhf0nTxmzFIH3Uvui8BEe9z3CJGcKhEYYupDJFifHD4h/Dt4LQYGyiqUwAmaoq3
	GqCcMeYZXK5QPG+si+8Gd5vn9B6ZIHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMKBo-0004Dh-2H; Wed, 08 Apr 2020 23:33:00 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMKBh-0004DI-Gy
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 23:32:55 +0000
Received: by mail-qk1-x743.google.com with SMTP id z15so2212323qki.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Apr 2020 16:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=AarP31NeFtwjBJYF14k+TeqRpiq/MNmokSH4bYDHBMs=;
 b=D90sFEJvtI1SoC3g7mhPhuGTzGWD5y62qxfVUFa/vg1zE8dXzdT4UzG2de6ccAzP98
 /l3rUi0+MaovRtvaiJ3soNuU9Q+kA8LHsKgjilkzcltTzE/arotB6eGzrL0TLzFM9B+q
 ZU2DCzC9azRhERXrmhWNZn1PlTfDKxobLtabF9NOXELdwR5whWNnIc5ev+sfZG79pOXP
 ugGwf/H1/Vn2eKW1bZAZa+FmiBXs2y0P7hpBAUrcApTBWhSAit4cJKbSfxxlYj5dfrwP
 WEHxzVL3MdX3P9Luy4BeCL7i85Vj6TguWsFhxaoioRMNRViEmlC5uT47mgixOxLdYGY9
 mFdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=AarP31NeFtwjBJYF14k+TeqRpiq/MNmokSH4bYDHBMs=;
 b=d/La3eunXju9VbWd1PclhCbEAq6MTKf3gndaDZEjfAQsXdVbPuGjdtvZmRF5Jq7RGC
 EchUq8YrdkVBfartD+hVew7wCuY05Wq9HQZ+MfP+zYwt1h0VRrJK3IeLRakhJMuzd6Hr
 JigJQKyfWTCLbXH8RRRQQJpFU57SvhuwEX0FkAzPnW6Uxdhio4t4NT3mKZ3Z+Uujqq8u
 znzn9ydF67p064+hOt4e+XzG5vhINZvVV1O/svzYkpI6Gri1B2nBuDct6H0H24JNDBF9
 my9ZS6mgIVXWa2d+jQODC0LHDZtHrhnz+CwXgfH1URmuZIZ3MFdI92BF/tIsZ+QBhgaF
 FsTw==
X-Gm-Message-State: AGi0PubVradbVUVJ1nh82uSP/4vR5LxRkIMiNVoVfD9PbLyYYXh32pOu
 3enR1ZA7i3tF8rkPQN/IGqRwE9WH9NeQiXmi6EjYrreRCO0=
X-Google-Smtp-Source: APiQypK3VBsqeagkSBNkdTG0ikorrmADVnVjIIFWD10zn6LqfOqBPbrS+v96n9danQ5pMa4QkBPwqJdWyEF8O7Hqcps=
X-Received: by 2002:a37:274d:: with SMTP id n74mr4955825qkn.170.1586388772107; 
 Wed, 08 Apr 2020 16:32:52 -0700 (PDT)
MIME-Version: 1.0
From: Wes Turner <wes.turner@gmail.com>
Date: Wed, 8 Apr 2020 19:32:40 -0400
Message-ID: <CACfEFw8EiPGHR1N_mqJsot6xzcnfh_dX8ZaeEXhS1edxdRA3Ug@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_163253_655688_1C1EB83A 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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
Subject: [OpenWrt-Devel] RFI: OpenWRT for #DisasterRelief: LoRA: ClusterDuck, LTE, 5G,
 Mesh, Throttling
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
Content-Type: multipart/mixed; boundary="===============8867290977088667372=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8867290977088667372==
Content-Type: multipart/alternative; boundary="0000000000003cba0705a2cfeb83"

--0000000000003cba0705a2cfeb83
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A thread for discussing OpenWRT for #DisasterRelief: LoRA: ClusterDuck,
LTE, Mesh

(cc'ing and re-formatting from
https://twitter.com/westurner/status/1238859774567026688 )

Please LMK if the forums are the appropriate place for these questions.

## Project OWL ClusterDuck
Homepage: http://clusterduckprotocol.org/
GitHub: https://github.com/Code-and-Response/ClusterDuck-Protocol

The Linux Foundation > Code and Response:
  https://www.linuxfoundation.org/projects/code-and-response/
GitHub:
  https://github.com/code-and-response

> Project OWL (Organization, Whereabouts, and Logistics) creates a mesh
network of Internet of Things (IoT) devices called DuckLinks. These
Wi-Fi-enabled devices can be deployed or activated in disaster areas to
quickly re-establish connectivity and improve communication between first
responders and civilians in need.
>
> In OWL, a central portal connects to solar- and battery-powered,
water-resistant DuckLinks. These create a Local Area Network (LAN). In
turn, these power up a Wi-Fi captive portal using low-frequency Long-range
Radio (LoRa) for Internet connectivity. LoRA has a greater range, about
10km, than cellular networks.
> [...]
> You don't actually need a DuckLink device. The open-source OWL firmware
can quickly turn a cheap wireless device into a DuckLink using the -- I
swear I'm not making this up -- ClusterDuck Protocol. This is a mesh
network node, which can hook up to any other near-by Ducks.
>
> OWL is more than just hardware and firmware. It's also a cloud-based
analytic program. The OWL Data Management Software can be used to
facilitate organization, whereabouts, and logistics for disaster response.

## LoRa + OpenWRT: ClusterDuck, ChirpStack
A ClusterDuck opkg would make it possible to use WiFi/LTE routers with a
LoRa transmitter/receiver connected over e.g. USB or Mini-PCIe.

Is there anything special that would need to be done to create an opkg for
ClusterDuck?

> OpenWRT uses opkg packages:
https://openwrt.org/docs/guide-user/additional-software/opkg

I searched for "Lora" in OpenWRT/packages:

- lora-gateway-hal opkg package:
https://github.com/openwrt/packages/blob/master/net/lora-gateway-hal/Makefi=
le
- lora-packet-forwarder opkg package (w/ UCI integration):
https://github.com/openwrt/packages/pull/8320
- lora-feed: https://github.com/xueliu/lora-feed :

  > Semtech packages and ChirpStack [(LoRaserver)] Network Server stack for
OpenWRT

## Mesh architectures: ClusterDuck // B.A.T.M.A.N
How does ClusterDuck compare to BATMAN and other mesh routing approaches?

Is there a reference implementation with WiFi, LTE, and LoRa and IDK link
prioritization?

>> [In addition to providing node2node/2net connectivity, #batman-adv can
bridge VLANs over a mesh (or link), such as for =E2=80=9Ctrusted=E2=80=9D c=
lient, guest,
IoT, and mgmt networks. It provides an easy-to-configure alternative to
other approaches to =E2=80=9Cbackhaul=E2=80=9D, [=E2=80=A6]]
https://openwrt.org/docs/guide-user/network/wifi/mesh/batman

## LTE Routers, LTE Tethering
LTE is useful for disaster relief scenarios.

Tethering an OpenWRT router to an LTE phone over WiFi/USB/Bluetooth is one
alternative to buying a router with an LTE modem, external LTE antennas,
and one or more SIM card slots.

I have no affiliation with either of these manufacturers. I have a few
different [quad-core, MIMO] ARM devices without 4G. TIL about routers with
LTE modems in them (and cell providers that allow adding additional SIMs
that just draw from a shared bandwidth quota).

> TIL that the @GLiNetWifi devices ship with OpenWRT firmware (and a mobile
config app) and some have 1-2 (Mini-PCIe) 4G LTE w/ SIM slots.
https://twitter.com/GLiNetWiFi

> Also, @turris_cz has OpenWRT w/ LTE and LXC in the kernel build.
https://t.co/Rz0Uu5uHJQ
https://twitter.com/turris_cz

Are there other [OpenWRT-compatible] devices with LTE and/or LoRa that
would be useful for disaster relief?

"Table of Hardware: LTE Modem supported"
https://openwrt.org/toh/views/toh_lte_modem_supported

## 5G
Are there any 5G-compatible OpenWRT devices yet?
Presumably, devices with Mini-PCIe are theoretically compatible given built
modules.

## Throttling
In a disaster relief scenario, burning through the limited available
bandwidth for certain media-heavy sites can be problematic.

Is there a recommended way to e.g. throttle / traffic shape individual
clients so that no one user can exhaust the bandwidth resources? AFAIU, SQM
can be configured for individual VLANs, but that would require an SSID per
user?

--0000000000003cba0705a2cfeb83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">A thread for discussing OpenWRT for #DisasterRelief: LoRA:=
 ClusterDuck, LTE, Mesh<br><br>(cc&#39;ing and re-formatting from <a href=
=3D"https://twitter.com/westurner/status/1238859774567026688">https://twitt=
er.com/westurner/status/1238859774567026688</a> )<br><br>Please LMK if the =
forums are the appropriate place for these questions.<br><br>## Project OWL=
 ClusterDuck<br>Homepage: <a href=3D"http://clusterduckprotocol.org/">http:=
//clusterduckprotocol.org/</a><br>GitHub: <a href=3D"https://github.com/Cod=
e-and-Response/ClusterDuck-Protocol">https://github.com/Code-and-Response/C=
lusterDuck-Protocol</a><br><br>The Linux Foundation &gt; Code and Response:=
<br>=C2=A0 <a href=3D"https://www.linuxfoundation.org/projects/code-and-res=
ponse/">https://www.linuxfoundation.org/projects/code-and-response/</a><br>=
GitHub:<br>=C2=A0 <a href=3D"https://github.com/code-and-response">https://=
github.com/code-and-response</a><br><br>&gt; Project OWL (Organization, Whe=
reabouts, and Logistics) creates a mesh network of Internet of Things (IoT)=
 devices called DuckLinks. These Wi-Fi-enabled devices can be deployed or a=
ctivated in disaster areas to quickly re-establish connectivity and improve=
 communication between first responders and civilians in need.<br>&gt;<br>&=
gt; In OWL, a central portal connects to solar- and battery-powered, water-=
resistant DuckLinks. These create a Local Area Network (LAN). In turn, thes=
e power up a Wi-Fi captive portal using low-frequency Long-range Radio (LoR=
a) for Internet connectivity. LoRA has a greater range, about 10km, than ce=
llular networks.<br>&gt; [...]<br>&gt; You don&#39;t actually need a DuckLi=
nk device. The open-source OWL firmware can quickly turn a cheap wireless d=
evice into a DuckLink using the -- I swear I&#39;m not making this up -- Cl=
usterDuck Protocol. This is a mesh network node, which can hook up to any o=
ther near-by Ducks.<br>&gt;<br>&gt; OWL is more than just hardware and firm=
ware. It&#39;s also a cloud-based analytic program. The OWL Data Management=
 Software can be used to facilitate organization, whereabouts, and logistic=
s for disaster response.<br><br>## LoRa + OpenWRT: ClusterDuck, ChirpStack<=
br>A ClusterDuck opkg would make it possible to use WiFi/LTE routers with a=
 LoRa transmitter/receiver connected over e.g. USB or Mini-PCIe.<br><br>Is =
there anything special that would need to be done to create an opkg for Clu=
sterDuck?<br><br>&gt; OpenWRT uses opkg packages: <a href=3D"https://openwr=
t.org/docs/guide-user/additional-software/opkg">https://openwrt.org/docs/gu=
ide-user/additional-software/opkg</a><br><br>I searched for &quot;Lora&quot=
; in OpenWRT/packages:<br><br>- lora-gateway-hal opkg package: <a href=3D"h=
ttps://github.com/openwrt/packages/blob/master/net/lora-gateway-hal/Makefil=
e">https://github.com/openwrt/packages/blob/master/net/lora-gateway-hal/Mak=
efile</a><br>- lora-packet-forwarder opkg package (w/ UCI integration): <a =
href=3D"https://github.com/openwrt/packages/pull/8320">https://github.com/o=
penwrt/packages/pull/8320</a><br>- lora-feed: <a href=3D"https://github.com=
/xueliu/lora-feed">https://github.com/xueliu/lora-feed</a> :<br><br>=C2=A0 =
&gt; Semtech packages and ChirpStack [(LoRaserver)] Network Server stack fo=
r OpenWRT<br><br>## Mesh architectures: ClusterDuck // B.A.T.M.A.N<br>How d=
oes ClusterDuck compare to BATMAN and other mesh routing approaches?<br><br=
>Is there a reference implementation with WiFi, LTE, and LoRa and IDK link =
prioritization?<br><br>&gt;&gt; [In addition to providing node2node/2net co=
nnectivity, #batman-adv can bridge VLANs over a mesh (or link), such as for=
 =E2=80=9Ctrusted=E2=80=9D client, guest, IoT, and mgmt networks. It provid=
es an easy-to-configure alternative to other approaches to =E2=80=9Cbackhau=
l=E2=80=9D, [=E2=80=A6]] <a href=3D"https://openwrt.org/docs/guide-user/net=
work/wifi/mesh/batman">https://openwrt.org/docs/guide-user/network/wifi/mes=
h/batman</a><br><br>## LTE Routers, LTE Tethering<br>LTE is useful for disa=
ster relief scenarios.<br><br>Tethering an OpenWRT router to an LTE phone o=
ver WiFi/USB/Bluetooth is one alternative to buying a router with an LTE mo=
dem, external LTE antennas, and one or more SIM card slots.<br><br>I have n=
o affiliation with either of these manufacturers. I have a few different [q=
uad-core, MIMO] ARM devices without 4G. TIL about routers with LTE modems i=
n them (and cell providers that allow adding additional SIMs that just draw=
 from a shared bandwidth quota).<br><br>&gt; TIL that the @GLiNetWifi devic=
es ship with OpenWRT firmware (and a mobile config app) and some have 1-2 (=
Mini-PCIe) 4G LTE w/ SIM slots.<br><a href=3D"https://twitter.com/GLiNetWiF=
i">https://twitter.com/GLiNetWiFi</a><br><br>&gt; Also, @turris_cz has Open=
WRT w/ LTE and LXC in the kernel build. <a href=3D"https://t.co/Rz0Uu5uHJQ"=
>https://t.co/Rz0Uu5uHJQ</a> <br><a href=3D"https://twitter.com/turris_cz">=
https://twitter.com/turris_cz</a><br><br><div>Are there other [OpenWRT-comp=
atible] devices with LTE and/or LoRa that would be useful for disaster reli=
ef?</div><div><br></div><div>&quot;Table of Hardware: LTE Modem supported&q=
uot;</div><div><a href=3D"https://openwrt.org/toh/views/toh_lte_modem_suppo=
rted">https://openwrt.org/toh/views/toh_lte_modem_supported</a></div><div><=
br></div><div>## 5G</div><div>Are there any 5G-compatible OpenWRT devices y=
et?</div><div>Presumably, devices with Mini-PCIe are theoretically compatib=
le given built modules.<br></div><br>## Throttling<br>In a disaster relief =
scenario, burning through the limited available bandwidth for certain media=
-heavy sites can be problematic.<br><br>Is there a recommended way to e.g. =
throttle / traffic shape individual clients so that no one user can exhaust=
 the bandwidth resources? AFAIU, SQM can be configured for individual VLANs=
, but that would require an SSID per user?</div>

--0000000000003cba0705a2cfeb83--


--===============8867290977088667372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8867290977088667372==--

