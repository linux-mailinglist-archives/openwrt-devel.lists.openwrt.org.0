Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC8511AD91
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 15:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vDsTMCuju3UljQDiogOgtpNq/iH9HluvJ/MHM69m2do=; b=UURepkCDyVHv+fq+zyi+ujvTS
	o6kh9A25MpP0eogdsaoL2ZRyeNZGmq/I7wPK6rbyu6metnjpSkQW3U+dWgktrcQNENW3fh7wpJ8PG
	lfUdCBu1yPSZj+U8SY9SCZkJ2Kc5zwooK9mtrNbCmAhUTcDZ+W/KG/vqruQmbeaDJtFdpKKyr5aLk
	S8NSi8O9sMMDhWSwR5tzJMQUkKfVL9sYUpPvf7Dqw1kp3mXoUy5RcFsoe5xauT+V/RREctM2bviIy
	keVqyV72g+ZqCEzyPNl1UccTxSfw/RtRbggtH5Y5riZehHa1n4tUFmY9/jZx4qUCZ6Vonse8170Oy
	cL9OuImOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if33m-0003r4-GL; Wed, 11 Dec 2019 14:33:50 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if33e-0003q9-Vp
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 14:33:44 +0000
Received: from pd95fd432.dip0.t-ipconnect.de ([217.95.212.50]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>) id 1if33b-0004AM-05
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 15:33:39 +0100
To: openwrt-devel@lists.openwrt.org
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
 <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
 <20191211142209.GC1371@makrotopia.org>
From: John Crispin <john@phrozen.org>
Message-ID: <72795206-d999-c459-4fa6-ae09df4e92f7@phrozen.org>
Date: Wed, 11 Dec 2019 15:33:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191211142209.GC1371@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_063343_189719_5516CC53 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Inquery
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 11/12/2019 15:22, Daniel Golle wrote:
> As a community, we decided to give our self a set of minimal rules[1].
> And even though it is in the last position, rule #12 "Be nice to each
> other." is meant just as serious as all the other rules.
> 
> So here, not for the first time, you are using language which has the
> only purpose to hurt other people (for which reason ever, it doesn't
> matter). This is therefore a very clear violation to the above
> mentioned rule. You statement "suck it" (guess what) is also an obvious
> and disgusting example of a masculist culture which hurts our community
> as a whole and I strongly believe we should not tolerate that.
> 
> And yes this was a spam mail. And it's even needless to say that
> replying to a spam email in which ever way will always make it worse.
> But that's not the point here and I will not engage in any discussion
> on that matter.
> 
> Please learn to behave or leave us alone.
> 
> [1]:https://openwrt.org/rules

+1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
