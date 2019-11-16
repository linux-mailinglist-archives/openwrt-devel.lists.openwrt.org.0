Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2921BFEC6D
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 14:17:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UpEQO4VDudNg8kSGNCz6sYz841Mo5rGhL2y1i6GhEtA=; b=IZil8FaDBXiuzx
	F2lDNtcmcQaGkgd1qOGuLrwHQH/p9eWuNxtU0F82H/jJTRFAh17HJ9/23Dn9xdprb/cFiqwxJiio4
	Y56NwkGbsCR7vTLv+d3FfRn5/5zL55fz97xKgQhwbOFZHb96zb6Ba0hoVLW5606BjYM/RNOkFtVbZ
	ynxBh4SY7J/fGnrFigvvdjqnp8F2fFNdkU7XfDnhSrKGbcHoOgyyqeTrVFaeD48iO2F5FCSZRCAov
	q19aDOXawEjLwFQGxNd4rz0Rh9tpJJRz4kA0G+2lFzLBg1soflAayAbsm7uLOH2Bml0VNnxQ58BQf
	BUljuGx+nGTsnpsC2NNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVxww-0000kT-Ju; Sat, 16 Nov 2019 13:17:14 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVxwn-0007sa-96
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 13:17:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:Date:Message-Id:Subject:Mime-Version:
 Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sYbMc2TDTjuOYYRK8zMCgS+bZDDBK/RSYTtHaKSFjCo=; b=TpZL/tKcIGahOuzmHxE+80M3ec
 buSiwQ6EQ1cnLzSWjm6Y9bM0rxK2wBJulOXlESvJ9qQznaYReym2DZJ/ezqhZpZxFVSsHo7UqS6Fh
 i3h1zn3DoKaJKo9jth8gn5AzK2fbytDOILff4CULpotrGN0wmsOPJdhN1VhuJ7J0ktSPNIU63jnf/
 c5wq/E04Z/+AnRG+qZRN/p0ts2N6579w8sEEock8G8bdCim2zmTbB5ZeLIrkWTSzH6TEfeWV2rqkW
 Vu5J9DmitoKMx3kiqSd2BWVh87V/ovdYy4eSo2nB6By73G1hpR+iIIz9prpDoDijdkEfQVR49gx/v
 jTqJbLtQ==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:64656
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.2) (envelope-from <por@oranjevos.nl>) id 1iVxun-004MrZ-Bo
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 14:15:01 +0100
From: Paul Oranje <por@oranjevos.nl>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Message-Id: <3168F0C8-7645-473B-8D5F-462C0F360720@oranjevos.nl>
Date: Sat, 16 Nov 2019 14:14:52 +0100
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3601.0.10)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_051705_464675_5FC072D9 
X-CRM114-Status: UNSURE (   4.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Silence on the DEV list and what about 19.07 RC1
 and 18.06.5
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

l.s.

Lately no new messages have arrived on the DEV list, which is further more remarkable since we have two releases and no word about these on the list. What is the matter ? (this mail message also poses as a test).

Regards,
Paul
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
