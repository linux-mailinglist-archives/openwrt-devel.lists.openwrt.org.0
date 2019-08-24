Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F489BEE8
	for <lists+openwrt-devel@lfdr.de>; Sat, 24 Aug 2019 18:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IIjvSIFdF5JQEnmaees0KJdtrhFWbEy5mIgkD0vGX3c=; b=UTg2W8DlWYH3DbOe4XcVLnzW9
	vdTVr2GJlbQOUN29WGhqbicdQWxfP1lidOtSU9PzCIMXF5VnALe7Pr3gHMUpoUgyc2TcBX5aaO/dl
	r50y5CfYvBl1+1XAB9h4s4ts17JeYIRHQuHo1gumB6MYVqVa7TS886xPew1PvzvwBukbzDKGbMBe4
	MrcZ4MC0/s2WDp9zx3TbJzBBOKUXlbzBNDxfsRPqZpo5BqkbYr4dfrZfa2QxWU7DIISKugtMcENHX
	FFhqz1YEfV8ugK6VCxQ6ZZu8JYZvbjP6E+q+sBIQlYINJAFu0xJ8SQOXk0gYBH2H6Ne7ouZ9IFpk6
	KiwhV/pXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1ZNf-0006dW-5l; Sat, 24 Aug 2019 16:59:11 +0000
References: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
Date: Sat, 24 Aug 2019 18:58:46 +0200
To: Enrico Mioso <mrkiko.rs@gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.19633.1566665943.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org,
 Petr Cvek <petrcvekcz@gmail.com>, john@phrozen.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
 (Fritz_Box_HW198))
Content-Type: multipart/mixed; boundary="===============0225540331285017081=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0225540331285017081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0225540331285017081==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1i1ZNV-0006d5-8N
	for openwrt-devel@lists.openwrt.org; Sat, 24 Aug 2019 16:59:02 +0000
Received: by mail-oi1-x242.google.com with SMTP id k22so9269289oiw.11
        for <openwrt-devel@lists.openwrt.org>; Sat, 24 Aug 2019 09:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vqg7toEY6+e2L6bRNbaYDJyEaNi0xcS4JbmlTyhU86w=;
        b=SvOkIOZgFNF8CtqYCxkWuYmBPqkXRP9cCMaVU8Z4GNZxWmBMRo/NBxS2FEapnxaRxL
         Pb3iL4MWIdwZ/JCo2hQGj9LmihFdYW3eNDW7JsjhryGMHf/8RQowSvDBbJVljWqNvAiL
         FICmzcbfMRAwY5AAAcHstYEFl45SNTZYM9GDYexWf7XDy0CFMJVNqs8iWoj0mGu9eAAT
         KRAPGGYSDZa0luciQX3f98ZUuraMpNM+fNb/uupRP6x/vwfrmq48i0PCkEwtdizP43Eb
         +QG3fju5RmKbOsvuZGVJqNsIQX+8P88MHWbb5LAi5DbkEGrrnnT25WtUvwRXhc50JSYU
         58lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vqg7toEY6+e2L6bRNbaYDJyEaNi0xcS4JbmlTyhU86w=;
        b=jMSxQFyO/f7ahdO/X5YaycDFs+n+e8WsrKWK10wmRlEW47Zjlju//I/Ffw/muacOTh
         /C5GfEp64Ai8AKQ0+Q/rA2lR1AaBmVzYhx3IWy5FRIuKvZI+ID/CeB8mxxzE8Do/yAW2
         XtUc+cu8nCE4xbI52GE1IxnyxsAN8BhyyMXuth2b1ktBeCDjZp5EBzYaywDnUyr34zfL
         CDm5nrpJR5mM29qVrqSYhx7oJyG1DIoy7k1OX+PtmUWipH4Q88cygfHabrwIwJ+lZWZY
         wFXeJRjfl4ZjMjy/IWzBFBhD1+KW2QlVOUJL2BYAvQU9YbC1NMExgPracLdDGJugAGFO
         ekdg==
X-Gm-Message-State: APjAAAUJYm8VuzeB4Fjk51uisjwm3OzdlqYm0L3j8hPtQzMtterMi/n2
	MxO9StjB/QpbRfYALG13KAfNvTC12UvDppR36mQ=
X-Google-Smtp-Source: APXvYqwqhVVAO7PVCEmrNoBFTbACWZuBP+8mrsPSLYUJHxVUEvuCRFAgiOF3AEK/FPTw834Npxpf0xmiiKv+9890Uhw=
X-Received: by 2002:a05:6808:8e2:: with SMTP id d2mr7248316oic.47.1566665938118;
 Sat, 24 Aug 2019 09:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 24 Aug 2019 18:58:46 +0200
Message-ID: <CAFBinCDbyb0mWeBt738XtMoWVHHi6sOep5DY5f6ddS0a5GKT3g@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272 (Fritz_Box_HW198))
To: Enrico Mioso <mrkiko.rs@gmail.com>
Cc: openwrt-devel@lists.openwrt.org, Hauke Mehrtens <hauke@hauke-m.de>, 
	Petr Cvek <petrcvekcz@gmail.com>, john@phrozen.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_095901_325353_7D4E48D6 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:242 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Hi Enrico,

On Sat, Aug 24, 2019 at 1:15 AM Enrico Mioso <mrkiko.rs@gmail.com> wrote:
>
> Sat, 24 Aug 2019 01:14:40 +0200 (CEST)ear OpenWRt list,
> I was looking at trying to add support to the FRITZ!BOX 3272 to OpenWRt.
> It is based on the Lantiq AR10 platform - for which I wasn't able to find any informations, even tought I see kernel code to support it is already available.
> From where may I start ?
from what I know AND if I remember correctly:
* the Ethernet controller is the same as on the VRX200 SoCs, only the
clocks are slightly different (the clock code may already account for
that, I don't know)
* the NAND controller got hardware ECC support (the upstream driver
doesn't support that yet and the upstream driver needs a rework
anyways because it's using the legacy NAND API)
* it has two PCIe controllers (VRX200 has one, our current PCIe
controller driver will not work with two controllers enabled - but
there's an ongoing effort in upstreaming the PCIe driver [0] which
will solve that problem)
* it has three built-in GPHY IP cores (VRX200 has only two, that means
it supports 2x Gbit ports - each using one GPHY - and 2x 10/100 Mbit/s
- using the third GPHY - Ethernet ports)
* upstream Linux should already have support for the clocks (there may
be bugs, but basic support is probably there)
* upstream Linux should already have support for GPIO and pin controllers
* the CPU cores are the same as on VRX200 so the whole CPU tree,
interrupt controller, etc. should all be the same (and thus supported
by upstream Linux)

Hauke is working on an upstream Ethernet driver, so if I were to touch
anything Ethernet related I would ask him about his plans fist.
upstream PCIe support is ongoing [0], I am following that discussion
instead of duplicating work.
Hardware ECC support for the NAND controller (as well as rewriting the
NAND controller driver to match the new upstream NAND driver API) is
something that nobody is working on (as far as I know).

> E.g.: is there any similar devices or places I might start looking?
the BT Home Hub 4A uses an ARX368 (= also "AR10")

adding support for any ARX300 based device ("AR10", such as the
FRITZ!Box 3272) then you I suggest to start very simple. if I would do
it then would use the following steps:
- create a bare minimum arx300.dtsi (I would start with one CPU,
memory and UART)
- add more devices, one-by-one to that .dtsi validating that each of them works
- find the ones that don't work and find out why that is (trying to
understand the out-of-tree drivers from the Lantiq "UGW" helps me here
- as well as feedback from Hauke and John)
- make it work (this typically involves sending kernel patches early
to upstream and getting feedback)


Martin


[0] https://lkml.org/lkml/2019/8/20/256


--===============0225540331285017081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0225540331285017081==--
