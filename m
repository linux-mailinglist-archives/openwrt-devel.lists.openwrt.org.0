Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D80B79AD4D
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 12:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dOgBI3gTFspAGXHNOIjm1iEo6I1GNiHhVv2SWcJXIFw=; b=c5rM6X5j8FLEyt
	Zx4dZWVVZZxjvbOubbl6x9go43qNd9+/UDn6BjCLMWUy7gtUY1qQjfgrmhcTbVdSeNoYO8GX/DdU7
	YHkjSHSik9D04O/y9UdDqQIEXvoGFbFCYXVhR1+pBGkwOAM99wrkNreMEy7EzG0i7EzECFlCJH9gM
	9EL/uVdYt0ae9SOQ7o/urqGF69UNbi7xqrceL46TyQ/9VPn119e99jJdJ7PF3XVXyuy1CBi/xncK8
	cGAHhqyd+FKw5xxzci6Xy7mKIlUIxxB2kqp9N42tXjZxAeKJaKPOla6p/paFRvbDQ1UWXsk9FRkq0
	JThSMzeStCZuCzKTHecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16sl-0004ak-Qs; Fri, 23 Aug 2019 10:33:23 +0000
Received: from n1nlsmtp02.prod.ams1.secureserver.net ([188.121.43.194]
 helo=n1nlsmtp02.shr.prod.ams1.secureserver.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16sZ-0003sY-UP
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 10:33:13 +0000
Received: from n3plcpnl0108.prod.ams3.secureserver.net ([160.153.154.133])
 by : HOSTING RELAY : with ESMTP
 id 16qpi9uqxXWYl16qri9PdT; Fri, 23 Aug 2019 03:31:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=marketwebdatahub.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TTP+5kibGmk4OdJtRDnGBiJELh1doKNaEdDIpKR2xMQ=; b=KIIbMxYh2LbdFDDfrumZg1rOBq
 Vlm+Wr4WA98H0GVwY641re6XahDEuT/FnrKK7UtG7bWLIqOJYU+hHpNfKjDK9eyw1LP9xSay4UZl9
 pgckeeDZNiT0Ud+GYk7hTgxm3k5K5qld0Q1kOkKfy1Y1ayjzpvtDNr5aG4YTcP0jeCYS1Mf/U5l32
 Nt/49biRTJdeiuoHq/MM8sCYR/mhX7SsI7jRRCyE8eTkvO0YybL0ZhFmqHAuHRGuzfGT84fZBwDHb
 d8uiUc9/rty9e8yU+BzLLrc5XheK5cGMEdip+NKDZAK8ft7kuZXZi1+gWYM7yS/awPp/TY+r6+Ous
 CoYo4H8Q==;
Received: from [49.205.218.107] (port=27691 helo=Eshwar)
 by n3plcpnl0108.prod.ams3.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <kathryn.watson@marketwebdatahub.com>)
 id 1i16cJ-009aLh-3b
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 03:16:23 -0700
From: "kathryn.watson" <kathryn.watson@marketwebdatahub.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 23 Aug 2019 05:16:16 -0500
Message-ID: <!&!AAAAAAAAAAAuAAAAAAAAAED4o2BJp3dJorPdB6ONe0cBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADTz7KOI0vjTYZwecyCR9lQAQAAAAA=@marketwebdatahub.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdVZm8kIRZ8KexKCRhqCh9R1z2+qRQ==
Content-Language: en-us
X-Antivirus: Avast (VPS 190823-0, 08/23/2019), Outbound message
X-Antivirus-Status: Clean
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - n3plcpnl0108.prod.ams3.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - marketwebdatahub.com
X-Get-Message-Sender-Via: n3plcpnl0108.prod.ams3.secureserver.net: authenticated_id:
 kathryn.watson@marketwebdatahub.com
X-Authenticated-Sender: n3plcpnl0108.prod.ams3.secureserver.net: kathryn.watson@marketwebdatahub.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfHM/vaJMSj2IVc0x9aM/EPE9z8UQAryPwzBv5/4nhPTHTlgK0g3NchVW5dVeou5OzeYIdMbi2TQYpnscSO5TEVOTvrf3Ad9EiGfxKl+wjj/eEoTUQ9w2
 D70uTbE4Vh2dp4PpbPFzAcA4824eN3JlHHZDPvYkj0bimN0kygVBH7Htdf7SCTN3PaK7xJJiK8tJYBLiH7I/p+XqAw5RWKor6QYLgQB45x0mGSpaOUnQx5wh
 XbycKGiqpOnV/iCzvVln0w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_033312_160055_BD3DBE09 
X-CRM114-Status: UNSURE (  -3.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.121.43.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [188.121.43.194 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] IBC 2019
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

Hello,

Good morning. Hope you doing well.
 
Would you be interested in acquiring the Attendee (Industry leaders)
companies of IBC 2019 (International Trade Show  For Media, Entertainment &
Technology Show) to reach more target group and promote your product/service
at your booth in the Show.

Venue: RAI Amsterdam, Amsterdam, Netherlands

Data_Fields: Company name, URL, Contact name, Job title, Phone number, fax
number, physical address, Company size, Email address etc.
Our list is the best source for awareness and can be used for booth Invites
- Multi-channel marketing planning - Product launch - Brand awareness -
increase in revenue etc.
Please confirm and let me know if this is something interested. So, I can
provide you available counts and commercial details for your approval.

Thanks for your time and awaiting your response.

Kind Regards,						
Kathryn Watson
B2B Marketing & Tradeshow Specialist

If you do not wish to hear from us again, please respond back with "Leave
Out" and we will honour your request.


---
This email has been checked for viruses by Avast antivirus software.
https://www.avast.com/antivirus


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
