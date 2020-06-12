Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431AC1F7D4D
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jun 2020 21:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MoJk2Reb4qw1p2rYkukKDGkew6KpJvWCh9X/dFJzy38=; b=B3agIG4o6XtfLsN6xB7nb5k/j
	CDy52lQpo6Rcbvx91X9CAbBIgxxY6liR7XGZIMdTZ679sethuU2WBOJ4ld3IKipYyLx1xai9Oq+FU
	2TEixR9QaFtCwmJjfQFDZmUdB2hJ+G2ToWr1FgI2nAjkcZxJUA+3cyeo7RnhzBCr2ppvC1VKTDCmC
	/nyu91Et1kc9rFMwb22ZPtn2dUYsmC0SuKAtlX3Q3MVygP90W5t0Ghfp/z6kYsj1D6shFqCyde8Zs
	gn8SFJhWoO+pSwEE/6dXw+DsmbXS8oEW5wvm7op2VwT+Hs921ODSiv1rzdyIMh9AV+Ut3kCsX3l3B
	jiBIv6L2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjov8-0003z7-5D; Fri, 12 Jun 2020 19:00:54 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjouz-0003wS-Ot
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jun 2020 19:00:47 +0000
Received: by mail.pbx.lv (MailSystem, from userid 80)
 id 05E391A60A8; Fri, 12 Jun 2020 22:00:42 +0300 (EEST)
To: Michael Jones <mike@meshplusplus.com>
MIME-Version: 1.0
Date: Fri, 12 Jun 2020 22:00:42 +0300
From: Roman Yeryomin <roman@advem.lv>
In-Reply-To: <CAJQUmm5-TujhXEt9OJWnfyueC_7_y1DfTTUa8yaBos0J80Qhcw@mail.gmail.com>
References: <20200601153226.15229-1-roman@advem.lv>
 <CAJQUmm5aVrkZ_UQOx-2Yk_jUreZOqCG5wt+S7+b3p9sqAyJY2g@mail.gmail.com>
 <6406348b-1e10-5e6d-0c20-9e2716099833@nbd.name>
 <CAJQUmm7kmKh-yNdHWWLVRwbVKhc7RXXZQhOo3+9vhWX+1taSdA@mail.gmail.com>
 <c6e9c91c03ca90ca6e2b7e1a92aaa86b@advem.lv>
 <CAJQUmm5-TujhXEt9OJWnfyueC_7_y1DfTTUa8yaBos0J80Qhcw@mail.gmail.com>
Message-ID: <81dc074fbde7f03f8cdbf1262df0f1f9@advem.lv>
X-Sender: roman@advem.lv
User-Agent: Roundcube Webmail/1.0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_120045_973778_85619036 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH] build: improve ccache support
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2020-06-04 22:29, Michael Jones wrote:
>> I agree with Felix. Having one ccache directory for multiple repos
>> doesn't make much sense to me as most probably they are for different
>> platforms. And even if they are for same platform there are more 
>> chances
>> for ccache corruption and deleting it will affect all those repos. So 
>> it
>> still can be done with symlink but IMO should be done manually to make
>> sure you know what you are doing.
>> Also BASEDIR should be changed too, probably, if we want to go that 
>> way.
>> 
>> 
> I am already using a shared ccache directory for multiple builds in my
> continuous integration system. I'm accomplishing this by patching the 
> build
> system to change the directory for the ccache directory.
> 
> If it were a .config option, your use-case would be directly supported, 
> as
> well as my use-case, without as much custom patching.
> 
> I imagine that there are plenty of other organizations which would use 
> the
> .config based functionality to customize things to their liking.
> 
> If ccache is corrupted there are much larger problems than slowing down
> other builds.

Please see v2

Regards,
Roman

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
