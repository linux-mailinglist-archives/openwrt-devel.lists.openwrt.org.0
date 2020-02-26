Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BAD170067
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 14:48:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLZBSKv5z5Ji8SD4SDx0v4KJbWbXlal0QXRtjaObY/w=; b=kXXWQGWAdbtubb
	+sm15WDH6RKlEennH/Nj1UF6QdiqvGH8vBcpHAa34YxBFxexrQYZRwtUbt8no1/w5tAjLD/k8PxB6
	mK5Nqt/klAXutthd8sQGrA68+WvdSQAY5+xNAiEhSs2aV0/2484thqtA77mUYO2+86xJj1mScJaPd
	aQUisfNSdMPAF2FpNbPfcWqpkvddgY2KyYrM9NDmmnxm1u+2TogIetPkmQfnuzGe1cZ6Siq1LBEUX
	Ac4RTY5Nh9Wj/Rwn3IbGKse1a3imTijmE61YamuYQFa0AL1EtsB8OryMywYi9T61j+1LRvWhIjgvC
	vxOnIdNu009XhY5Tm0Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6x3L-0003Gm-6o; Wed, 26 Feb 2020 13:48:43 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6x3B-0003G9-Gd
 for openwrt-devel@lists.openwrt.org; Wed, 26 Feb 2020 13:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s63pINBkyOXvDDgmp7CO/KxV8l+Nm1EWKPVzbRGQ8ME=; b=0QAR5asYE1EtH/C6P97Fa5XqRu
 N0n32B7wtUiG7wJmHA3Dfayf4CVtYu6wHTIf7rQfdqXgHxwYwRaQpzqLOLLue+ZOxARQctd4fP6Xv
 CYKQChusmsDkCJPd/o3FXIopN+ax8cmZvTNA/1Vlj2cPpVDWZMEJq2KVbmoANWyYpUI/5PjQJ7mlF
 Io5jxLouGsMwi1ecj9yQjg7RDRWCTTyqKbk3USJhjIlr+HNijeOELHFZkY/WXvolzPfqhu0TajPsZ
 pK7w9cJq888Hk+1g5RBJ8Iv3dX4W0vHg/YY+WUdfNob7lOdEoXbMwKI1/RBijPuj6ocqIxM+SA6l3
 26bd3M/w==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:65262
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <por@oranjevos.nl>)
 id 1j6x3A-003Fxl-34; Wed, 26 Feb 2020 14:48:32 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <CAPxccB1fkreXtLxb06yPdRjhk0ruvvV+Yf+O+SHvMeESuNFqWA@mail.gmail.com>
Date: Wed, 26 Feb 2020 14:48:13 +0100
Message-Id: <52C4ED1B-FFFC-4E45-A3A9-A6F222C1818C@oranjevos.nl>
References: <CAPxccB1fkreXtLxb06yPdRjhk0ruvvV+Yf+O+SHvMeESuNFqWA@mail.gmail.com>
To: Eneas Queiroz <cotequeiroz@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_054833_847741_6D89A973 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ipq40xx: QCE/crypto fixes & enhancements (PR
 #2518)
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

Op 25 feb. 2020, om 14:02 heeft Eneas Queiroz <cotequeiroz@gmail.com> het volgende geschreven:
> 
> Hi
> 
> I have finished working on
> https://github.com/openwrt/openwrt/pull/2518, fixing some bugs with
> the crypto engine, and adding asm modules to crypto algorithms, since
> the engine is not very fast when using "network-sized" (<1500-bytes)
> requests.
> 
> Since it's been started a while back, it appears on page 4 of the PR
> list, so I'm sending a note here so that people can review it.  Can
> someone please remove the "RFC" and "work in progress" labels, since I
> can't do that myself.
> 
> Cheers,
> 
> Eneas
> 

Having read the whole conversation: an impressive piece of work.

Could this helps with ipq806x ?
On ipq806x qce isn't available on all SOCs (supposedly only on ipq8064) and therefore support has been removed from the kernel [1].


[1] commit ad07166ea7286f350628f1093e4385db9be63d31 (ipq806x: remove unsupported hw-crypto qce driver)

Regards,
Paul



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
