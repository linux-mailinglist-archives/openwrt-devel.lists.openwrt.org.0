Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85C2EB887
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 21:43:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUIY/4raOv2okH/7OrVQ576NhWtvgIYsyVDiL5Xnaf0=; b=Sgpu2IbfUFWn0n
	XByA/WCcFRde7D4NXB0cpCmKBJ3xoZItLTsYlsSsKGOSuEd+Ow5Txxj3OkhoOwEOZqHIQxlhp+vt6
	+iCNLemV4wsTFWsByGCbjZcTyrSFKIZl20YW/oW87pdgTYxfjskiiPk2Yj/RuctqIfXEYTssFeCxc
	p9I+2jk+sg6iQyi5r1HRfQSnV1cAdM7aJRPh/Ji4VQuqZbVljVDo9VfsRszeSC0fDgM7xpfCaLuyg
	mYmFl223wDX7wr5KoreHPj12T5Ugm87+XisD40VFA4mI+PYYYw1OQ2drPVyiP6da436QaG6gdwnHF
	Ig9k/X9dxfTlE2yM6t6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQHI2-0003X5-0K; Thu, 31 Oct 2019 20:43:30 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQHHt-0003Wi-Tc
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 20:43:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wFvWp86UUUXZRgiPTz/7cflU7OrXS4Ikda8ugVUgjwc=; b=q8R3onC2+NHECzJN6RoeVWGZD5
 N7KzEn9ff73CQQcijeLLLvx1I5OvL90KZm42GX5Sb0b9+Z58w5y/DfQaXG0YzjzhKlJvH9GGlWz5y
 57pX8zPjlmRCpD8j9XAr4SuLRDvLs01JAGofbGItN+vstxOXvgtV02ImElytlTEzB7EpaPNmMHSBt
 GTtlFnuavEIXcMqyJM6ApKSkJziwYqFzyqTwVz6VTMdJCoWIt+TP7DflIIYIjijDG67n0Jpr6uIvJ
 8SpsUOd+YCwwvvvLRljY/q3u/BLtMjEodwRKsMy2+UDrdVud7/1Tvz1GuE1yI7G+u5Ef8Du6Uhu3X
 bn8LhjGg==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:54491
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.2) (envelope-from <por@oranjevos.nl>)
 id 1iQHHs-000XxE-70; Thu, 31 Oct 2019 21:43:20 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <20191030221611.5ac4b262@mir>
Date: Thu, 31 Oct 2019 21:43:10 +0100
Message-Id: <22673362-A0D1-4AC2-9BB0-DDE04447B94C@oranjevos.nl>
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
 <b8079f7e-d50c-45a9-d2f9-984f10716cd0@hauke-m.de>
 <012301d58f3f$2f360a40$8da21ec0$@adrianschmutzler.de>
 <20191030221611.5ac4b262@mir>
To: Stefan Lippers-Hollmann <s.l-h@gmx.de>
X-Mailer: Apple Mail (2.3601.0.10)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_134322_098503_94794242 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



> Op 30 okt. 2019, om 22:16 heeft Stefan Lippers-Hollmann <s.l-h@gmx.de> het volgende geschreven:
> 
> Hi
> 
> On 2019-10-30, Adrian Schmutzler wrote:
>> 1. We currently have work-in-progress 4.19 support PRs for ramips,
>> ipq806x and bcm63xx, still with considerable work to do at least for
>> the first two (IIRC).
> 
> Kernel 4.19 has been working fine on ipq806x (nbg6817) for me so far,
> I've been using it a for couple of months now and the pending pull
> request[0] is functional. Yes, there might be further optimization steps
> possible, but none of that is necessary to switch ipq806x from v4.14 to
> v4.19 now'ish (routing throughput is already significantly better in
> v4.19, jumbo frames no longer crash stmmac, so I do consider the current
> state of the v4.19 patches for ipq806x to be an improvement over v4.14).
Absolutely.

> 
> Regards
> 	Stefan Lippers-Hollmann
> 
> [0]	https://github.com/openwrt/openwrt/pull/2472
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
