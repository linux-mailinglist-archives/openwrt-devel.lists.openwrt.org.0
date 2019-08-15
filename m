Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4218E92D
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 12:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7tR4vk+LB+ABiXg93oO0yu6t428cOjw2ls+fNmxA98=; b=j6FsHpZa1Ir8TU
	yBRy95Rw1q549RtthQWaz+VVlXjmGgkmP87X8MiHkuNr7GRGjYcI9C+VNaGj+i4/FLayJ27dQ8Don
	uF7J1dVDgU7Nlpe6StXjTZbJw9w1FCXkuqCoUfKnf7TAoIV+iophTRp/8UWyLaibCUsNjemK9UAwq
	cMsX84FudTLwqlPOlIFPqd5Qt20VJsHIObs8djDFu8Br57Y4Iele3aIib6AIePj1y5+Qaq1lJge+g
	Mr+vS+9Q2C+TXKhxqNGDCor0IjjbVYlja+jXeoyCho8uc90Mf3j1kUlatCsVCLuymzW92621tiBht
	7UDAXz1ZxEhyvUZSKfbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDBv-0001BT-CC; Thu, 15 Aug 2019 10:41:11 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDBa-0001B8-H8
 for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 10:40:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q2vgGjSWYLZ0veNrORUca+ZL3LLhNpcjW3dExdC8aYQ=; b=wmKg+zShp/eKuyFE/qdY9dzG99
 iPUlw+GUDnfywcK7QUXQtq1CO8mjAcSuJJeD0050DijE/LBLHSw8y6YHIN/pgNOCMrXFDOctgWZQe
 MFQN3JmwJmTrogBOOWShGYmhF2+KWZr68PG5OvYb5Wjze9x/YzmMym9juDv+4O3/StnH3/mHHDga9
 msx3wST5jKD8ocIbJH7MNnZvUOtR8K9rOiZwaKJqEcgR5/P4RrXhSPnAJfVUsFSmhHYRs2q2a9UQ/
 DpYbBzm9wzu89kz5GPWtha1OLEkqmi+dy4Z7o02LKzEl4JWnhz9n6XptO49C6CdTF8yJlZHvvXe9X
 r+pQUH4w==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:54288
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <por@oranjevos.nl>)
 id 1hyDBZ-002LZG-9p; Thu, 15 Aug 2019 12:40:49 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <mailman.17146.1565851779.19300.openwrt-devel@lists.openwrt.org>
Date: Thu, 15 Aug 2019 12:40:42 +0200
Message-Id: <B440D0FC-C72C-484C-9EE4-A4F76E7E25A2@oranjevos.nl>
References: <mailman.17146.1565851779.19300.openwrt-devel@lists.openwrt.org>
To: Joan Moreau <jom@grosjo.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_034050_711020_AF04A059 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Killing leds
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> Op 15 aug. 2019, om 08:49 heeft Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org> het volgende geschreven:
> 
> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
> 
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.
> Van: Joan Moreau <jom@grosjo.net>
> Onderwerp: Killing leds
> Datum: 15 augustus 2019 om 08:49:29 CEST
> Aan: openwrt-devel@lists.openwrt.org
> 
> 
> Hi
> 
> How to add an option in the makeconfig menu, where one can select to activate/deactivate all togehter the leds support in the compilation ?
Setting LEDs is typically something that done at run-time, not at build-time.
What use-case does this serve that cannot be handled by en/disabling led from the system config (with uci) ?

> 
> Thank you
> 
> 
> 
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
