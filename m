Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEC1138DB3
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 10:24:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:Message-ID:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=hRfCkbisFIvq5Db/uq+gogPr8dx9z9fPupSFDPlL/OU=; b=ADK
	VmM17UHm+yB3neAh8/9luZ7dFMG8VrY3Rfgt6O0rkw5RwPcm0LvfUs1VLNdTCN9Kg9FIsEBv/okDj
	USN4S53TMBNquARpWut2+cOalM1GY/BFdnaGw6CM2jD+cWL6vW/xG7Vf8UKayuU4kTrUzSiS9JuwY
	UBk8ZVC4f391SGQVE+kteZBYsaU2NCPgURRYmyTpA6jIAvHiYhOebY6pNo3c693YKSsUCnrswnvJv
	euzm5QMZf6cevrEdK4p8pOsIluHAocnNswhri3MZOnUezk4Wg0t4iD0KqxTus2/LgOEjfJ2T5fK6P
	QaNIY9s8fGDaf1CXksVaz2f028PaYLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvxX-0006d7-C2; Mon, 13 Jan 2020 09:24:31 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvx8-0006Pq-1b
 for openwrt-devel@lists.openwrt.org; Mon, 13 Jan 2020 09:24:08 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BF07748AE;
 Mon, 13 Jan 2020 10:24:02 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6ea30baa;
 Mon, 13 Jan 2020 10:23:52 +0100 (CET)
Date: Mon, 13 Jan 2020 10:23:51 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>, John Crispin <john@phrozen.org>
Message-ID: <20200113092351.GJ86978@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e1aca052-b7ca-e611-c67b-fc3b03662e5c@phrozen.org>
 <4f4382fd-ab37-cccb-5bca-b20ab13c1f96@aparcar.org>
 <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012406_233789_66F98E08 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_PORT             URI: Uses non-standard port number for HTTP
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Paul Spooren <mail@aparcar.org> [2020-01-12 11:47:29]:

Hi,

> Every commit message for newly added devices must contain a number of
> hardware information and steps for an initial installation.
> The hardware information should contain at least the following information,
> maybe more:

YAML is really PITA, so you don't want to do this in commit description.

It should be external file YAML file, with defined schema, so you can validate
its correctness.

See my previous info http://lists.infradead.org/pipermail/openwrt-devel/2019-May/017082.html

> If you have a tool to extract such data or ideas on how to create such,
> that'd be great.

See the kernel tooling link above.

> As an alternative I could also create a shell script that extracts data on a
> running machine, but that might miss some details.

Or ideally merge the information from both sources (DTS and runtime).

John Crispin <john@phrozen.org> [2020-01-13 09:47:54]:

> I think this will turn into aproblem where functionally sane patches will
> turn into hassle to get merged. we could encourage folks to send the yaml
> file as a companion email I guess.

If there's good tooling(schema, validation etc.) and documentation around, it
should be as easy as:

 - make device-yaml-prepare IP=10.0.0.1 DTS=target/linux/foo/dts/device.dts
   [*] generating device YAML from DTS...
   [*] adding runtime details from device at 10.0.0.1
   [*] target/linux/foo/info/device.yaml created

 - $EDITOR target/linux/foo/info/device.yaml

   (add details which can't be gathered during runtime, factory flashing
    instructions, UART pinout etc.)

 - make device-yaml-validate target/linux/foo/info/device.yaml
   OK!

 - make device-yaml-preview target/linux/foo/info/device.yaml
   [*] check http://127.0.0.1:8000
   (or launch browser directly via xdg-open or such)

We could simply start with opt-in (bonus points if you include such YAML file
along with the support for a new device) and once the dust settles we could
start talking about it as somehow more or less mandatory requirement.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
