Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E72E1B8893
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 20:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:References:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7b9AY0CUerzv+ayL030yYNVprbrtgLgkaddgTvwLBjA=; b=isKHsQ/c5iupDQ
	/qFJK11pGaNrR8nbWnW2sHD64mJFeyQpNSUW2QOkDDTvpeYK/x8cg8BWEL9rTDcRXOz3BVmaS1q8V
	Ep1vZ5cX2HHAeBBzXRXbiGrvqo8PqqnGNf6WIua9WWUpax/bM68GtKfDpfWIvg6X/TOogFfV6i4zr
	QkhGRADG6fjMOGkl2UgvcVU+G7DiqVDJ1Kmm5qnv1mUtba4vNzLJDYu12KYuNK54nIlKLFQ465DzV
	vtMHSRzrf5Dr3DzOIUBL4bHSQeERksPBLTppqo/PzZlB3KcB7nd+puW2qn9jOdNDNaqGj7l5LwUJh
	QsI7oUZF46BnCCtaem1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSPpN-0002xn-KT; Sat, 25 Apr 2020 18:47:01 +0000
Received: from mail.lucabert.de ([2a0a:51c0:0:52:1::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSPp5-0002nw-LA
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 18:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lucabert.de
 ; s=2020;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:To:References:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uDUbVJC0OtIWludhLN6BxKLjV6iNZpGbRqJ94c/BuY4=; b=PJ3YWSFPaeBgdLshZL+nbMnMU4
 b5xJyz7Rs4DGtkflokmHWoz7tLyiEvmpCmwIwF2b5SHmZvEizo3BEh/tIIxlX9wrzfn+wNdlyN5sv
 wVbA9H+PKWW3WOYwRxYvGA6Ou;
Received: from [2003:c2:7f18:bd00:2::1]
 by mail.lucabert.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <lucabert@lucabert.de>)
 id 1jSPp4-0007SC-07
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 20:46:42 +0200
References: <06e362cc-08be-6092-3286-ab1c23df1c31@lucabert.de>
 <EE89DA7A-3830-4BF2-B4CF-947F873630D4@gmail.com>
To: openwrt-devel@lists.openwrt.org
From: Luca Bertoncello <lucabert@lucabert.de>
Openpgp: preference=signencrypt
X-Face: *N]JhbB="`Ho]_HEy]Qn@=#}#T6Vx3(!v3%-=Lwa[wIk=1s&:}id_AN,wf{$tA{8HKlwU?oOm!.s.`}V-eD0+^qOUWZ@E8qyUK$y#j3|JBnvoKhpY/U@`"|@}$UuZQfyS1o&4(DceOp/Z"8[.S|lFMA;
 IC-Qb=i"z$~/mG)Ug"k7b!YT[r6b$'}ScyBxev]mRJf}2Lm:_!F@Fp82w;
 N-}hPXl~vkEZ[PjiT~R{RT||L-%JV$HmY^`[_L
Message-ID: <f173964b-e4e8-687f-1310-33bb13cb4ef1@lucabert.de>
Date: Sat, 25 Apr 2020 20:46:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <EE89DA7A-3830-4BF2-B4CF-947F873630D4@gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_114643_710470_51DEB908 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Upgrading LEDE to 19.07
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

Am 25.04.2020 um 20:44 schrieb Rosen Penev:

> This is indeed a v1. Strange that it has 64MB of flash. Maybe someone modded it...

With 64MB could I upgrade to 19.07?
This is the only interesting thing for me, right now... :D

Regards
Luca Bertoncello
(lucabert@lucabert.de)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
