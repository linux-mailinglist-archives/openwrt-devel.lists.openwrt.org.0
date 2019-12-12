Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FE211CE87
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Dec 2019 14:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6loiJ879bmSD3Mf9KU1RpMoSPDAlkNM7A9x5d5qKRdk=; b=MIS4MOhvqPWolQ
	A9MS1Ye8c3ET9k1L1SOsTUpGaQM3NRsmT75lCOWV8TudBnR0SCJvh1RaM5F6ntm4WiMoIXgMWuB0I
	8Sn/yP4P8Yc7egOTyUDbT28t7HPFTGBGMCd5wPKMe1BzPd2tim2FrjitKG77bXuyqCyqBROfDLYRH
	P/QFRJdXPmRhr6YuldPtY1ctQU6hT5n/3JxzNXtopc0UCBjDiW83Sl29HfKIiV7xTFA6HurZ2bDsb
	MCr6muS9WJsCZB+adLS51sMKx/WRj3t7/ydGXdA4/shJKHKWTPbVlcZhe/CsFLfhT3UEoTadoEX7s
	tvdEN9IJyOw2aR+sQqSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOhw-0006JK-At; Thu, 12 Dec 2019 13:40:44 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOhm-0006If-Ik
 for openwrt-devel@lists.openwrt.org; Thu, 12 Dec 2019 13:40:36 +0000
X-Originating-IP: 2.247.248.18
Received: from [127.0.0.1] (x2f7f812.dyn.telefonica.de [2.247.248.18])
 (Authenticated sender: mail@aparcar.org)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 11CE8E0010;
 Thu, 12 Dec 2019 13:40:17 +0000 (UTC)
Date: Thu, 12 Dec 2019 13:40:15 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: Daniel Golle <daniel@makrotopia.org>
Message-ID: <fa5c1f9f-ab3d-4b1d-bb6a-6919675818f1@localhost>
In-Reply-To: <20191211142209.GC1371@makrotopia.org>
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
 <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
 <20191211142209.GC1371@makrotopia.org>
MIME-Version: 1.0
X-Correlation-ID: <fa5c1f9f-ab3d-4b1d-bb6a-6919675818f1@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_054034_756112_28A43CDE 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: openwrt-devel@lists.openwrt.org, Tom Psyborg <pozega.tomislav@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


+1




11 Dec 2019 15:22:44 Daniel Golle <daniel@makrotopia.org>:

> Hi Tomislav,
> 
> On Wed, Dec 11, 2019 at 11:24:21AM +0100, Tom Psyborg wrote:
> 
> > suck it
> > 
> 
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
> [1]: https://openwrt.org/rules
> 
> 
> 
> > 
> > On 11/12/2019, rqgxfc <rqgxfc@vip.163.com> wrote:
> > 
> > > 
> > > 
> > > Hello Sir ?
> > > 
> > > We are a trading company named Shaanxi Hao Zi Guan Materials Co.,Ltd . Now
> > > we are very interested in your products , we will plan to sell your
> > > products in the Chinese market . If you are interested in cooperation,
> > > please send us a catalog and pricelist .w
> > > Looking forward to receiving your reply .
> > > 
> > > Best regards,
> > > Catherina
> > > 
> > 
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> > 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
