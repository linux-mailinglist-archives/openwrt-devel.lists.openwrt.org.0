Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B58F14FF92
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 23:26:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2mMkgIIE1VQ/9fAS454MBiwlbsoio3mXsBSiJaq09c=; b=hYm98SByQm7ls0
	0Lw4l+UNgSsdonhpVSulA4wLO+tJRo8/kOQ11EU8608y5KNQuHJiFXhAiJEUmD2ciYRO2nlj7MfyT
	KsYH2HKYRxZKtBYWzzrwWnVOnQVP2f9SS/lUkQpSCEnB2YaBOs3vHTdmUzupbFbj2l70c6MeCazyc
	06PQ4IuVqdd3go/kZrYlKDNqaiwYepKNXlE720chLl3mtz6nX9t7BarrNdOlqH14ZmN0F2NVzxC7b
	eGlklGBkHH4E4ecGJyVNpLsMqXxf9NR5MMDoLY3HjbuxMxudVaxiv/V5zGE8pDQKKWeP7WJblUkpS
	+dBWjHnDUqkZsTHdskNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyNgu-0002TP-3q; Sun, 02 Feb 2020 22:26:08 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyNgn-0002Su-KU
 for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 22:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1EEEN4KAIcJp80SGJu8BhOGcYxcWhWDQ5xWUAP8LDbo=; b=Z+MQjQjBd/oY5qII/4WlE4PCJx
 3XU6a+hRyf3CaI1jeOD+rZ4OFCIg7yXYwODoBxorwrGE2jZ4pHoAUcwvQ/BJycI7sfWdbZpFxB2rR
 LfnAGIHKAcCRtROzphcJOrSyB4wOS3Ec42xYz3D2xaISB4bgANf4JtCx/pP4GOyttDxKjoYhlHtdJ
 eH0TRcbapIWDhPZej8Z2M3YrBUw+1rPUR22MTkvyc82oMXYDaEpKDQXGfMNJ+o6AyqmlpgVi3IjHe
 IUMbOnGp/NqAh4Cd1F6UCAxJRv67hc7bDFCMSl+mv3lpXc7yWWtvL8ZuYMg/4dlvqlU9jOWxUnRQp
 57inLRzA==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:51465
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <por@oranjevos.nl>)
 id 1iyNgk-001ty1-7x; Sun, 02 Feb 2020 23:25:58 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <00fe01d5d9ed$171fe360$455faa20$@adrianschmutzler.de>
Date: Sun, 2 Feb 2020 23:25:46 +0100
Message-Id: <8DCA4B8A-6FEB-46E3-B7B8-680881ADEEB2@oranjevos.nl>
References: <20200202124828.2100-1-freifunk@adrianschmutzler.de>
 <a49ff1f2-a4ac-df8d-14be-4e9d3e111eee@gmail.com>
 <00fe01d5d9ed$171fe360$455faa20$@adrianschmutzler.de>
To: "<mail@adrianschmutzler.de>" <mail@adrianschmutzler.de>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_142601_957346_C617A795 
X-CRM114-Status: UNSURE (   5.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: introduces KERNEL_LZMA variable
 for common build sequence
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
Cc: openwrt-devel@lists.openwrt.org, Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Op 2 feb. 2020, om 18:20 heeft mail@adrianschmutzler.de het volgende geschreven:

> ...
> We could also use KERNEL_DTB_LZMA of course, but I do not think this will really bring a benefit.
Preferable, as it is more clear what it is supposed to do, e.g. to those that are not enjoying the OpenWrt makefile magic on a every day basis.

Regards,
Paul
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
