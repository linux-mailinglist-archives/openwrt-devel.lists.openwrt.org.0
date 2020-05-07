Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758FD1C8E52
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 May 2020 16:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0Ji6cDtITHaL5C6qIPeAOImejhXlK2ipQjMC39riSU=; b=JqcFMqPLZeN8CP
	MmK1lFmK5xaJZno2hP65wdUqCIArsziLs52Cq+22Z/je/HK9Wc4Nl+qNOFz9wl84Vzb3B6G17HUY8
	InbRZ2lyJm/vkp1AytFzssiA1l2oeM3srEcDR3hkKYVlfawFzg+9A3HZCpphTtM+S/4TwVHAnfl8E
	wPsWMwo3ssKpif8NI7tOvL/OSlfMwEid1H8EHnWqwFDNnkALiSawLIgbqoATJuKvd7nNlwH7MwV92
	qqJtCcrUxRyc/WYv1kCwyN4jypbIlu0XFqXIdo+koVzkWY8JnrIpPDOzpm2IN+2gTWsHf/s8ljwFR
	P0ZEbWvImTtaYV80sgjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhUv-00011o-SA; Thu, 07 May 2020 14:27:37 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhUo-00010O-HY
 for openwrt-devel@lists.openwrt.org; Thu, 07 May 2020 14:27:31 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 047ERMnu030904
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 7 May 2020 08:27:22 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <20200501192135.15043-1-philipp@redfish-solutions.com>
Date: Thu, 7 May 2020 08:27:22 -0600
Message-Id: <F627115F-4D20-4D9A-BBA3-EE0D5B14DDC1@redfish-solutions.com>
References: <20200501192135.15043-1-philipp@redfish-solutions.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_072730_665225_A5DC4C1A 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] firewall3: add --contiguous to
 time-based rules where needed
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Should I open a PR or is this the correct way to get a review for firewall3?

Thanks


> On May 1, 2020, at 1:21 PM, Philip Prindeville <philipp@redfish-solutions.com> wrote:
> 
> From: Philip Prindeville <philipp@redfish-solutions.com>
> 
> If the start_time > stop_time on a rule, then the --contiguous arg
> should be included in the rule.
> 
> Signed-off-by: Philip Prindeville <philipp@redfish-solutions.com>
> ---
> iptables.c | 3 +++
> 1 file changed, 3 insertions(+)
> 
> diff --git a/iptables.c b/iptables.c
> index 559fe7defef3be85c4eb2934884caf549f932bc5..5c02e6e26c93468f4ef6a7f917069bb49985aad8 100644
> --- a/iptables.c
> +++ b/iptables.c
> @@ -1099,6 +1099,9 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
> 		fw3_ipt_rule_addarg(r, false, "--timestop", buf);
> 	}
> 
> +	if (time->timestart && time->timestop && time->timestart > time->timestop)
> +		fw3_ipt_rule_addarg(r, false, "--contiguous", NULL);
> +
> 	if (time->monthdays & 0xFFFFFFFE)
> 	{
> 		for (i = 1, p = buf; i < 32; i++)



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
