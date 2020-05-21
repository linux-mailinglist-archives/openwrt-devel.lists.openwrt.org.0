Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF49C1DC577
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 05:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XCvo7y+kA0gbNP7CN28zlLgyNzx3Z8FkK335y1O+i9s=; b=ORR9gN5tmSyPoFUmrhutUx4sP
	mlvN7f1S7JfBsLD/gDitR6e8uous8ppc3/goZNWMFiCNOSiUmi70H8iBhUCR29VRqzoeIHhHKdMS9
	hi7mjrJZmQgiNShfbObtJNV3gr9w9l8Wh9PVTEtkcBpMHEGwPeaTxktTs6yTt+TmpVMtOFSb4lHim
	LaEHmV65BzpmKQAaGZYBo9vF0PtDKQy3Xp2TBbvbTGC+CAt1TGsDy+194astn8d+KP2rq4biZa++c
	7aMdXxm/Lp9Z2W0NjlYYwQzziIcFwRFvJBNkK4y/xITVEdBANwSV7nM3hxN3yE7G3VpGRlLWsmY0Z
	SHXnhrdhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbbaL-0003BS-2t; Thu, 21 May 2020 03:09:29 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbbaD-0003B0-9g
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 03:09:23 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id f89so2465355qva.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 May 2020 20:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=UibQ2t7kf/rd6yGAhou7zCVGn01LUqSZslpKEKIiIpY=;
 b=EsAGttKPXad8jUKsrcFY68pKeCF3qwfSbkdkKpvMiLVbalEu3MLJz799MVTfS9xPGE
 r3ZJHUvZ+BaUYi5V1w2AtXWSPGEOyr4ptVkosJhrLojQm/wMIZq+7HxBnbrbOpwWVYjQ
 ftzn98PbowMwReIZnQ1Gxo3CjotYG1uJ1EenwLj5A2naJ1n2JbeGIwDiD9lXf+RJ1WCX
 e66im/gCDjrL5lssjzwCz1jbZoLWp1N1OKK37jDW0KxcPfD6ioaJSaOE1/axn6clBfGH
 YDFVUrNJpntMPd7MCdfRRdI4td8Jqj5lyr/xsXmOaorf6Ju1wH3e25of08PYn9zh44V4
 VL4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=UibQ2t7kf/rd6yGAhou7zCVGn01LUqSZslpKEKIiIpY=;
 b=sAOqwUtdfD7iKmRT+6WjlFr+LttKralI6qlzotWRVJYiqDCtZ1GRVWf90vy06+wKb8
 qt09GhG9s+MhwURt5Xt5aoW+arakZptfZVB7MM5BIfgJhrFvywRpjoBBq0DrhWBLgsXm
 PoT5P4uHSDJ3xK7dAMRrdYwvR1cIpu96ITjtCrVbmP6LBZ1ENjlZWYdVvIg5WTN3OlkV
 HBb/fec9ScyZ4o8pNWcMFWtI/A73PRH/beitTRd9ahd614MIkZzGSEV7E1O13yi64AVK
 pWtkYwt2YffFXnZOXFZ0E0hio5DicXIfEVjLRHKpkqw8HKeQmM59CRKSyr/nMrsbU/rv
 UD1A==
X-Gm-Message-State: AOAM533jcUQ9XJ/5CrINK53YGFNePHribha9at1PNduBMJvTZn3DbCco
 YcMijK+6RBQ8pW6E+aON2kCMaXsdk/sE+yWnU3YC3sQW
X-Google-Smtp-Source: ABdhPJwC4BPoSFTkJFKNsEbrT1LI41QNgvoXJ1KZJLy36qtC+LEWankHhZUB9ChmI6Y0OvbY4LdSQTkhY6WqVxxQZmo=
X-Received: by 2002:a0c:f407:: with SMTP id h7mr7798048qvl.116.1590030559845; 
 Wed, 20 May 2020 20:09:19 -0700 (PDT)
MIME-Version: 1.0
References: <CACfEFw8EiPGHR1N_mqJsot6xzcnfh_dX8ZaeEXhS1edxdRA3Ug@mail.gmail.com>
In-Reply-To: <CACfEFw8EiPGHR1N_mqJsot6xzcnfh_dX8ZaeEXhS1edxdRA3Ug@mail.gmail.com>
From: Wes Turner <wes.turner@gmail.com>
Date: Wed, 20 May 2020 23:09:08 -0400
Message-ID: <CACfEFw8RA4s880MrL0dR4wpKegEiYYrarWmdzkjoAHkjc=V7Cg@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_200921_357991_FF9C07AC 
X-CRM114-Status: GOOD (  22.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f2a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] RFI: OpenWRT for #DisasterRelief: LoRA:
 ClusterDuck, LTE, 5G, Mesh, Throttling
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
Content-Type: multipart/mixed; boundary="===============2476232242319993683=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2476232242319993683==
Content-Type: multipart/alternative; boundary="000000000000b3a10c05a61fd605"

--000000000000b3a10c05a61fd605
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Bump.

On Wed, Apr 8, 2020 at 7:32 PM Wes Turner <wes.turner@gmail.com> wrote:

> A thread for discussing OpenWRT for #DisasterRelief: LoRA: ClusterDuck,
> LTE, Mesh
>
> (cc'ing and re-formatting from
> https://twitter.com/westurner/status/1238859774567026688 )
>
> Please LMK if the forums are the appropriate place for these questions.
>
> ## Project OWL ClusterDuck
> Homepage: http://clusterduckprotocol.org/
> GitHub: https://github.com/Code-and-Response/ClusterDuck-Protocol
>
> The Linux Foundation > Code and Response:
>   https://www.linuxfoundation.org/projects/code-and-response/
> GitHub:
>   https://github.com/code-and-response
>
> > Project OWL (Organization, Whereabouts, and Logistics) creates a mesh
> network of Internet of Things (IoT) devices called DuckLinks. These
> Wi-Fi-enabled devices can be deployed or activated in disaster areas to
> quickly re-establish connectivity and improve communication between first
> responders and civilians in need.
> >
> > In OWL, a central portal connects to solar- and battery-powered,
> water-resistant DuckLinks. These create a Local Area Network (LAN). In
> turn, these power up a Wi-Fi captive portal using low-frequency Long-rang=
e
> Radio (LoRa) for Internet connectivity. LoRA has a greater range, about
> 10km, than cellular networks.
> > [...]
> > You don't actually need a DuckLink device. The open-source OWL firmware
> can quickly turn a cheap wireless device into a DuckLink using the -- I
> swear I'm not making this up -- ClusterDuck Protocol. This is a mesh
> network node, which can hook up to any other near-by Ducks.
> >
> > OWL is more than just hardware and firmware. It's also a cloud-based
> analytic program. The OWL Data Management Software can be used to
> facilitate organization, whereabouts, and logistics for disaster response=
.
>
> ## LoRa + OpenWRT: ClusterDuck, ChirpStack
> A ClusterDuck opkg would make it possible to use WiFi/LTE routers with a
> LoRa transmitter/receiver connected over e.g. USB or Mini-PCIe.
>
> Is there anything special that would need to be done to create an opkg fo=
r
> ClusterDuck?
>
> > OpenWRT uses opkg packages:
> https://openwrt.org/docs/guide-user/additional-software/opkg
>
> I searched for "Lora" in OpenWRT/packages:
>
> - lora-gateway-hal opkg package:
> https://github.com/openwrt/packages/blob/master/net/lora-gateway-hal/Make=
file
> - lora-packet-forwarder opkg package (w/ UCI integration):
> https://github.com/openwrt/packages/pull/8320
> - lora-feed: https://github.com/xueliu/lora-feed :
>
>   > Semtech packages and ChirpStack [(LoRaserver)] Network Server stack
> for OpenWRT
>
> ## Mesh architectures: ClusterDuck // B.A.T.M.A.N
> How does ClusterDuck compare to BATMAN and other mesh routing approaches?
>
> Is there a reference implementation with WiFi, LTE, and LoRa and IDK link
> prioritization?
>
> >> [In addition to providing node2node/2net connectivity, #batman-adv can
> bridge VLANs over a mesh (or link), such as for =E2=80=9Ctrusted=E2=80=9D=
 client, guest,
> IoT, and mgmt networks. It provides an easy-to-configure alternative to
> other approaches to =E2=80=9Cbackhaul=E2=80=9D, [=E2=80=A6]]
> https://openwrt.org/docs/guide-user/network/wifi/mesh/batman
>
> ## LTE Routers, LTE Tethering
> LTE is useful for disaster relief scenarios.
>
> Tethering an OpenWRT router to an LTE phone over WiFi/USB/Bluetooth is on=
e
> alternative to buying a router with an LTE modem, external LTE antennas,
> and one or more SIM card slots.
>
> I have no affiliation with either of these manufacturers. I have a few
> different [quad-core, MIMO] ARM devices without 4G. TIL about routers wit=
h
> LTE modems in them (and cell providers that allow adding additional SIMs
> that just draw from a shared bandwidth quota).
>
> > TIL that the @GLiNetWifi devices ship with OpenWRT firmware (and a
> mobile config app) and some have 1-2 (Mini-PCIe) 4G LTE w/ SIM slots.
> https://twitter.com/GLiNetWiFi
>
> > Also, @turris_cz has OpenWRT w/ LTE and LXC in the kernel build.
> https://t.co/Rz0Uu5uHJQ
> https://twitter.com/turris_cz
>
> Are there other [OpenWRT-compatible] devices with LTE and/or LoRa that
> would be useful for disaster relief?
>
> "Table of Hardware: LTE Modem supported"
> https://openwrt.org/toh/views/toh_lte_modem_supported
>
> ## 5G
> Are there any 5G-compatible OpenWRT devices yet?
> Presumably, devices with Mini-PCIe are theoretically compatible given
> built modules.
>
> ## Throttling
> In a disaster relief scenario, burning through the limited available
> bandwidth for certain media-heavy sites can be problematic.
>
> Is there a recommended way to e.g. throttle / traffic shape individual
> clients so that no one user can exhaust the bandwidth resources? AFAIU, S=
QM
> can be configured for individual VLANs, but that would require an SSID pe=
r
> user?
>

--000000000000b3a10c05a61fd605
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bump.<br></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Apr 8, 2020 at 7:32 PM Wes Turner &lt;<a =
href=3D"mailto:wes.turner@gmail.com">wes.turner@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">A=
 thread for discussing OpenWRT for #DisasterRelief: LoRA: ClusterDuck, LTE,=
 Mesh<br><br>(cc&#39;ing and re-formatting from <a href=3D"https://twitter.=
com/westurner/status/1238859774567026688" target=3D"_blank">https://twitter=
.com/westurner/status/1238859774567026688</a> )<br><br>Please LMK if the fo=
rums are the appropriate place for these questions.<br><br>## Project OWL C=
lusterDuck<br>Homepage: <a href=3D"http://clusterduckprotocol.org/" target=
=3D"_blank">http://clusterduckprotocol.org/</a><br>GitHub: <a href=3D"https=
://github.com/Code-and-Response/ClusterDuck-Protocol" target=3D"_blank">htt=
ps://github.com/Code-and-Response/ClusterDuck-Protocol</a><br><br>The Linux=
 Foundation &gt; Code and Response:<br>=C2=A0 <a href=3D"https://www.linuxf=
oundation.org/projects/code-and-response/" target=3D"_blank">https://www.li=
nuxfoundation.org/projects/code-and-response/</a><br>GitHub:<br>=C2=A0 <a h=
ref=3D"https://github.com/code-and-response" target=3D"_blank">https://gith=
ub.com/code-and-response</a><br><br>&gt; Project OWL (Organization, Whereab=
outs, and Logistics) creates a mesh network of Internet of Things (IoT) dev=
ices called DuckLinks. These Wi-Fi-enabled devices can be deployed or activ=
ated in disaster areas to quickly re-establish connectivity and improve com=
munication between first responders and civilians in need.<br>&gt;<br>&gt; =
In OWL, a central portal connects to solar- and battery-powered, water-resi=
stant DuckLinks. These create a Local Area Network (LAN). In turn, these po=
wer up a Wi-Fi captive portal using low-frequency Long-range Radio (LoRa) f=
or Internet connectivity. LoRA has a greater range, about 10km, than cellul=
ar networks.<br>&gt; [...]<br>&gt; You don&#39;t actually need a DuckLink d=
evice. The open-source OWL firmware can quickly turn a cheap wireless devic=
e into a DuckLink using the -- I swear I&#39;m not making this up -- Cluste=
rDuck Protocol. This is a mesh network node, which can hook up to any other=
 near-by Ducks.<br>&gt;<br>&gt; OWL is more than just hardware and firmware=
. It&#39;s also a cloud-based analytic program. The OWL Data Management Sof=
tware can be used to facilitate organization, whereabouts, and logistics fo=
r disaster response.<br><br>## LoRa + OpenWRT: ClusterDuck, ChirpStack<br>A=
 ClusterDuck opkg would make it possible to use WiFi/LTE routers with a LoR=
a transmitter/receiver connected over e.g. USB or Mini-PCIe.<br><br>Is ther=
e anything special that would need to be done to create an opkg for Cluster=
Duck?<br><br>&gt; OpenWRT uses opkg packages: <a href=3D"https://openwrt.or=
g/docs/guide-user/additional-software/opkg" target=3D"_blank">https://openw=
rt.org/docs/guide-user/additional-software/opkg</a><br><br>I searched for &=
quot;Lora&quot; in OpenWRT/packages:<br><br>- lora-gateway-hal opkg package=
: <a href=3D"https://github.com/openwrt/packages/blob/master/net/lora-gatew=
ay-hal/Makefile" target=3D"_blank">https://github.com/openwrt/packages/blob=
/master/net/lora-gateway-hal/Makefile</a><br>- lora-packet-forwarder opkg p=
ackage (w/ UCI integration): <a href=3D"https://github.com/openwrt/packages=
/pull/8320" target=3D"_blank">https://github.com/openwrt/packages/pull/8320=
</a><br>- lora-feed: <a href=3D"https://github.com/xueliu/lora-feed" target=
=3D"_blank">https://github.com/xueliu/lora-feed</a> :<br><br>=C2=A0 &gt; Se=
mtech packages and ChirpStack [(LoRaserver)] Network Server stack for OpenW=
RT<br><br>## Mesh architectures: ClusterDuck // B.A.T.M.A.N<br>How does Clu=
sterDuck compare to BATMAN and other mesh routing approaches?<br><br>Is the=
re a reference implementation with WiFi, LTE, and LoRa and IDK link priorit=
ization?<br><br>&gt;&gt; [In addition to providing node2node/2net connectiv=
ity, #batman-adv can bridge VLANs over a mesh (or link), such as for =E2=80=
=9Ctrusted=E2=80=9D client, guest, IoT, and mgmt networks. It provides an e=
asy-to-configure alternative to other approaches to =E2=80=9Cbackhaul=E2=80=
=9D, [=E2=80=A6]] <a href=3D"https://openwrt.org/docs/guide-user/network/wi=
fi/mesh/batman" target=3D"_blank">https://openwrt.org/docs/guide-user/netwo=
rk/wifi/mesh/batman</a><br><br>## LTE Routers, LTE Tethering<br>LTE is usef=
ul for disaster relief scenarios.<br><br>Tethering an OpenWRT router to an =
LTE phone over WiFi/USB/Bluetooth is one alternative to buying a router wit=
h an LTE modem, external LTE antennas, and one or more SIM card slots.<br><=
br>I have no affiliation with either of these manufacturers. I have a few d=
ifferent [quad-core, MIMO] ARM devices without 4G. TIL about routers with L=
TE modems in them (and cell providers that allow adding additional SIMs tha=
t just draw from a shared bandwidth quota).<br><br>&gt; TIL that the @GLiNe=
tWifi devices ship with OpenWRT firmware (and a mobile config app) and some=
 have 1-2 (Mini-PCIe) 4G LTE w/ SIM slots.<br><a href=3D"https://twitter.co=
m/GLiNetWiFi" target=3D"_blank">https://twitter.com/GLiNetWiFi</a><br><br>&=
gt; Also, @turris_cz has OpenWRT w/ LTE and LXC in the kernel build. <a hre=
f=3D"https://t.co/Rz0Uu5uHJQ" target=3D"_blank">https://t.co/Rz0Uu5uHJQ</a>=
 <br><a href=3D"https://twitter.com/turris_cz" target=3D"_blank">https://tw=
itter.com/turris_cz</a><br><br><div>Are there other [OpenWRT-compatible] de=
vices with LTE and/or LoRa that would be useful for disaster relief?</div><=
div><br></div><div>&quot;Table of Hardware: LTE Modem supported&quot;</div>=
<div><a href=3D"https://openwrt.org/toh/views/toh_lte_modem_supported" targ=
et=3D"_blank">https://openwrt.org/toh/views/toh_lte_modem_supported</a></di=
v><div><br></div><div>## 5G</div><div>Are there any 5G-compatible OpenWRT d=
evices yet?</div><div>Presumably, devices with Mini-PCIe are theoretically =
compatible given built modules.<br></div><br>## Throttling<br>In a disaster=
 relief scenario, burning through the limited available bandwidth for certa=
in media-heavy sites can be problematic.<br><br>Is there a recommended way =
to e.g. throttle / traffic shape individual clients so that no one user can=
 exhaust the bandwidth resources? AFAIU, SQM can be configured for individu=
al VLANs, but that would require an SSID per user?</div>
</blockquote></div>

--000000000000b3a10c05a61fd605--


--===============2476232242319993683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2476232242319993683==--

