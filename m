Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5DA1838CE
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 19:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gyg+DrWMCKgOtJt1dn0giHmAjfkjnP1d5IpWXwubFOA=; b=jzgELA6AK4NGIz
	nS/bvgx2JafKp57RlzhZhZvxlxsTO2+4yPlRKkhBXqKAzDsnjc5k3mjtwkFw7pmPSunXVCgD1Duv3
	2IEARP8p7H4aaBUPjh+7HLVlLCS21IytCiGqJb1d2+arhRkmky3jV+1RPKp6wfN/fbX5h1TB9+amr
	0nKpZFiYwvbZlTAGb0+UxoxJuT+ANrpZufs/6uVSF7ZxtMP2162h45UCDf5KvHmSIdTu+eY4bxRxp
	oSUXl3tWU6ESKy/lSU2dHtBQWzQVc4LgM0sIxu38bWr9ps5kGk7/5mI0e8wRiXYxSc1BlVYLZtY8C
	L488UQWVriI1YSPuaoCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCSiq-0003yN-QE; Thu, 12 Mar 2020 18:38:20 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCSij-0003xo-Ur
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 18:38:15 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MP2zs-1iyGJr07DQ-00PMny
 for
 <openwrt-devel@lists.openwrt.org>; Thu, 12 Mar 2020 19:38:11 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 12 Mar 2020 19:38:10 +0100
Message-ID: <012301d5f89d$61b678c0$25236a40$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdX4mye+NCcwXkKKRh6XzRVJrxTqrw==
Content-Language: de
X-Provags-ID: V03:K1:PFbB0Yacq1nNmniT+USPOHIUZMfRTboi214gDdbpv50TvZ8UiC3
 4Mpsdja7m+aX4HCS/PRm+AP3TdhI+a1S0UWWhdDeDE05SqYFyLMkCzf/f6ETwjqkdSA1fKY
 dT3ofKOha33BR1Lg7QDI+tXr1+TKVonoe/qkWmkaRp9M8PNrdGQod0dn5uVlaihQlwx1LK8
 vwvBVi816eo4mm/QsRcSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0SzxMGMjCeM=:pN3NtaT3V6mBxyrmFhu+Vx
 58DT0YRRUZ7Lsi9SRu35v84KM/IIy6kEol+Sq3IxqGaivzMTCSk0LSgwn/gTzm2oUEXYOTidh
 /K337SzJRF1sgUjC3g+sRYjjaa+RN7uobwlZNjDUl7vktHynCZapuSjKjhJH+iS5jnDe9MW+f
 eqWdUZgu8nE1ShVvkCtJlNT1dPx+tJmeTexo2EeIpWT+0fPGCPOA0gwpVb3SPzuZYXIqFTQiC
 q7KByjoYU/CIE+uzjGhNuAnitB1uQ1yiJVucQl1fzrqvIb624l+UrWADFl9Ea0h++UeAKl+jS
 b9jCt9m/Wex6Vwss7ZzVzNSDh+Eq78IfaaG7j10jpPrdBHpqJMZJYGQsrBmcod9voJCuy24V9
 WJUFELx1yK/T5D+ipqs3i0DR/3JSCC8cycC5qCpxrSIy4+nSttjESe4qOrz/iG8WVSeii6AfF
 y+lL0hS6ipu7FKwQC+Y1RWtHwXbooSKy+K5UbF2FCpyHgJluvZrxo9TVaLrGUc/XQ3yRtkASm
 bHSlldWNx2uHKmhvp++c/iC1OQFX+XqnGLQyWXzyBQtn+FCzgEq4hZdd9zWLuB7Kwgq/ahKz/
 Q1QgZvN4lHSnsBCFokPNzW3JomGCnNU6harYLP90uavsNZX3h8r9b/328T/ckxog+dcaCr17N
 KWCdimKaHVtSMDBCZWuhxySsoQ+tiihl+ArTZPVcvboXRpkRUa7cYlBWZQTokuK3VQHcyNLUK
 SPK8gqqYrnZWU9kXbWQI31iQdcnDbT7Gu1Z5/RKBFiR0oZUiqzfg2cMVIzAeLwXmrqf/Ye5Sj
 Lz3yOiNXPUmbfmOB04nUnYTdmr8YtjGWBAQXR6U32hfhj+YRalw3AHRDZOFgide0lbGH6HA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_113814_286076_35EE1913 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] cyclic dependency for /lib/functions.sh and
 /lib/functions/system.sh in special case
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

Hi,

I just wanted to source /lib/functions.sh in /lib/functions/system.sh
(base-files package), as several functions in the latter require the former and
it's annoying (and untidy) to have to include both files in several places.

However, I realized that currently /lib/functions/system.sh is sourced in
/lib/functions.sh, function default_postinst():

https://github.com/openwrt/openwrt/blob/8df14c229c02a3b9329afc6e3ebf4f8aec5b59ed
/package/base-files/files/lib/functions.sh#L257

So, currently effectively both files depend on each other in at least one case.

However, in default_postinst(), it looks to me like no function from system.sh
is actually used directly, but it's merely put there as an "external include"
for the /etc/uci-defaults/* files processed there.

I'd like to resolve this, both as I think the sourcing of /lib/functions.sh in
/lib/functions/system.sh is helpful and tidy and because I think the cross
dependency is quite undesirable.

I see two solutions to that problem:

1. Remove the sourcing of /lib/functions/system.sh in default_postinst(). That
would be the tidiest way IMO, as dependencies used in a uci-default script
should just be put there. But it might break things if people relied on it. It
would be relatively easy to fix uci-default scripts in openwrt repos, but
downstream might complain. Still, I'd prefer this solution.

2. A second option would be to keep the include, but just move the function
default_postinst() out of /lib/functions.sh (from my perspective, it doesn't
really match there anyway) into a different library file (which?). This would
still resolve my "dependency problem".

Any opinions?

Best

Adrian




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
