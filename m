Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6299611BF9E
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 23:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xf5ZNvIk6PomXboAu4ZpAwLfoIxWDEnDlyBM+vcEGw=; b=HvWMBK2jyCpSxd
	tcwFglVtjQBXOki6OtTPeAGiimJBdcOOMz1J+QnNszm63zKL0lfdO2OpGU60M6STsfuiWZX7v8c8T
	WQ55oGc5gIzQb/H4jOy4k+d9eQctON6+q2PkBJcoL3fp/+YGfRbd8BwH6ATzB20xHvJmy3KynbiWM
	m1x94wjl5fwRWP1Y9MCaMTL47seKDPQNdKr2A8FbODVKd0IjR1cLuoIGaWY08EYSRpjZW/uRTU+qi
	e7hFZVkXjCjuAyeu0fcgvRVFyMjowyRpRIOkdpr9322huxSm/uNghqa+DSzrV0pmnMnYenQNAGs/P
	UkWliRhasBqnm1Wrowkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifA8p-0000lE-5j; Wed, 11 Dec 2019 22:07:31 +0000
Received: from mx1.riseup.net ([198.252.153.129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifA8i-0000kJ-J8
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 22:07:26 +0000
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 47Y9yY0y3GzDrKF;
 Wed, 11 Dec 2019 14:07:17 -0800 (PST)
X-Riseup-User-ID: 56E3C7E6B286928E0E05FBA41F0FD04B64055C5A3A1DAC9F724E074CE1188860
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 47Y9yX1nPDzJtDn;
 Wed, 11 Dec 2019 14:07:15 -0800 (PST)
From: Gio <gio@diveni.re>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Dec 2019 23:07:12 +0100
Message-ID: <6282917.FZ2IBkSyqR@lifestock>
In-Reply-To: <20191211142209.GC1371@makrotopia.org>
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
 <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
 <20191211142209.GC1371@makrotopia.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_140724_652155_FE241D79 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [198.252.153.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wednesday, 11 December 2019 15:22:09 CET Daniel Golle wrote:
> Hi Tomislav,
> 
> On Wed, Dec 11, 2019 at 11:24:21AM +0100, Tom Psyborg wrote:
> > suck it
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

+1

Thanks Daniel for the effort drawing attention to this issue




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
