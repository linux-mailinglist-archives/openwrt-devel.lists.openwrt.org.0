Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9581D44E1
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 06:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/w0ghVQKGuNK9Ut61R8bXBWfwIwS+OhhFxui4b50Xf0=; b=jDn6v0tJ0fIrG2
	jondBGr+6AFKPtFDgsWT91dU1LBuzhPx1wI+YxLvo9IwKJVeJUJCCDJedqFmchDWGRMUuLVEDHQ1g
	NJjxZRMgz6huXGwQYzjnhn+F6+1/ISfYJSTQ9ijint2MQe/7gpq0tbKI7SttTyWBAUEZxsgWzW4Mg
	HjphkrMdCh70sDKowFMcsC+a/MA5k4r5h2USFkEATSfIMHExkxlQIeUZBBrYEXcVg8AIcC6lJb9xp
	V9jZPCvSowZWJ6l6sOJxuEKUGlWMJkTVbtg9eCwzBSOQ5El6iY7mPWmAzqoJNE92oLhkaMqMlgSzG
	WShfbVQDmVJciTnMkPnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZSC0-0005Ru-IG; Fri, 15 May 2020 04:43:28 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZSBv-0005RZ-6Z
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 04:43:24 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 04F4hLWv015770
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 22:43:21 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
Date: Thu, 14 May 2020 22:43:21 -0600
Message-Id: <DFF1467A-20C3-4EAC-BE93-D879BBA5D869@redfish-solutions.com>
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
To: Michael Jones <mike@meshplusplus.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_214323_326943_FE2CA9B2 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Ubus based service watchdog?
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


> On May 13, 2020, at 11:48 AM, Michael Jones <mike@meshplusplus.com> wrote:
> 
> I have a critical service on my OpenWRT system that needs monitoring and re-starting if it's failed.
> 
> I've been looking for a mechanism in procd that would allow me to request that my service be terminated if it did not periodically notify some watchdog endpoint via ubus.
> 
> It seems to me like this is not something that is currently supported by procd, and I've written my own clumsy "watchdog" wrapper program that tries to do the job.
> 
> Are there any plans to support a feature like this in procd directly in the future?
> 
> If there are no plans, and I were to write code for this, would OpenWRT be interested in reviewing, and then merging, patches?
> 
> Are there other people on this list who would take advantage of this feature if it were available? If so, what functionality would you like to see?
> 


So existing services that are launched by procd (like ISC dhcpd) would need to be patched to support this?

-Philip


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
