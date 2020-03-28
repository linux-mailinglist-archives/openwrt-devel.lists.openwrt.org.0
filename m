Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319B2196506
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 11:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aL4nL/NT9kYGKFc8glo64W195f0B+WyWYFkZuecdHsQ=; b=L8BAfRvBcHPIw8
	juw1YQ1daX4N8v+k5F5P/x77CYseXHaQzSinLBWyfQTM8W5zBkwYFZ/1wJ3BmMaWCgS5FSLH4LX2M
	3b6IgP6deUn1e27zQx/L8wNNdTSWBVPfR1pz/uDE0QIC2mDUczebIidNWktxlRyMahV6Vzo2ffEQW
	6eHF6fW2xI3+0oUywHB0Ce20+BxHg38kP/rHCcYbTZgc8HVYzfHWjZDr2uKorvXrk7FBKEK4sMh2I
	Vdcn7TzLNSjyhAY/OXxUyEKDNNoXx4jk5Jne/3YHpDyncFII9AoRHHxQ7EqyFVT9ofkwvLcdNjTVX
	d1e/pR5nuAKtjNM/XrBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI8gF-0000iD-Tj; Sat, 28 Mar 2020 10:27:07 +0000
Received: from mail.aboehler.at ([176.9.113.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI8g7-0000hL-NW
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 10:27:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.aboehler.at (Postfix) with ESMTP id 3E04761808AC
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Mar 2020 11:26:52 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aboehler.at
Received: from mail.aboehler.at ([127.0.0.1])
 by localhost (aboehler.at [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PM462f8ShNGd for <openwrt-devel@lists.openwrt.org>;
 Sat, 28 Mar 2020 11:26:49 +0100 (CET)
Received: from [192.168.17.123] (212-197-140-18.adsl.highway.telekom.at
 [212.197.140.18])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: andreas@aboehler.at)
 by mail.aboehler.at (Postfix) with ESMTPSA id 24F00618018E
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Mar 2020 11:26:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aboehler.at;
 s=default; t=1585391209;
 bh=uIXp9lB9ABqGC5BDqffUeOgbqXhbim765uA/hFACXXg=;
 h=To:From:Subject:Date:From;
 b=Hq8iJfJOeSL/75I6ZZ3PqUWRfddp6aCu/PU1U9OKs4z7CHrD6kpXX4oM9cSF3f0CV
 P/pwzJmSN1EQ+cgFPikowSWHJr7/hTwLurvv1xgKzgLUAW/pv6ofalflBC5mw9PExu
 bon3H7A9jhaYqHpnnBYPmQcYUmvjOmu1V7+tBR9Q=
To: openwrt-devel@lists.openwrt.org
From: =?UTF-8?Q?Andreas_B=c3=b6hler?= <dev@aboehler.at>
Message-ID: <f2b0d5ae-ddfb-e9d5-897c-8ff4dbfb2d8c@aboehler.at>
Date: Sat, 28 Mar 2020 11:26:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: de-AT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_032700_067298_51340670 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [RFC][lantiq] Custom PHY and ethernet/switch driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

I'm currently adding support for the AVM FRITZ!Box 3390 and 3490
devices. Both require a firwmare upload via MDIO to boot the separate
WiFi SoC.

In the corresponding PR at [1] we had a discussion on where to best
implement this MDIO downloader. As a consequence, I posted to
linux-netdev [2] and got the advice to implement it in an MDIO device
(custom PHY).

I did a quick test on my FRITZ!Box using kernel 5.4. With some changes
to the .dts and sysctrl.c (clock gates), the switch and ethernet drivers
came up. So far, only the Lantiq GPHYs work, the two Atheros GPHYs do not.

If I've understood the kernel code correctly, I don't need any changes
to the DSA switch driver because the PHYs are handled by the phylink
library. However, the legacy xrx200 driver would need to be patched
separately.

What is the current state in switching to the upstream DSA switch driver?
Can both drivers be handled, i.e. DSA for newly added devices and the
legacy driver for older devices?
Which driver should I target first, the legacy xrx200 or the DSA driver?

Please keep in mind that it's going to take some time for the
implementation, since my current firmware upload tools are experimental
userspace tools.


Thanks,
Andreas

[1] https://github.com/openwrt/openwrt/pull/2662
[2]
https://lore.kernel.org/netdev/27780925-4a60-f922-e1ed-e8e43a9cc8a2@aboehler.at/

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
