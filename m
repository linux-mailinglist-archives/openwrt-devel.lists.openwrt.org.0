Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0CFA9B50
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 09:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YfC+PuFkZ6/a3U9vfW0sjDKhuMn8ZXciLbgiKG+bsiM=; b=Q8Z1nOT+cLBzR2
	iCO9FN/mpRq3D/wcWC1MwIC+cadVJ91DE2b49UGTL6M3e+B0OO+7GBL6YVQEsYVLniI8ENhdKagL+
	VjZOofJu0wIMkPEhWdTla1XUg5rqSwKFYAWlpfu3Bi5rncXlT3h6EofUx+/gIMGFSuinA/kB/AXvq
	ktBIS3sQIgsAdtkWN6gN3UlJoxbXBkyxbVIKOy5hSJ/aIUyPiBmIRzYCWTbItXZIFH4mNbR7h8h8H
	cnX6/17DD61kKKfPexpn3MYik7CdHf8NWVj/AXck5B5fo1fOg+ukLZkALG1VtsqLgGZS3mnWc8Ubc
	kUWmzcLHkUVA/JvWmKpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5lwA-0005tJ-SA; Thu, 05 Sep 2019 07:12:10 +0000
Received: from n1nlsmtp01.shr.prod.ams1.secureserver.net ([188.121.43.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5lvr-0005dg-UI
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 07:11:53 +0000
Received: from n3plcpnl0116.prod.ams3.secureserver.net ([160.153.154.141])
 by : HOSTING RELAY : with ESMTP
 id 5lu9iSB7L23ui5lu9ibZHL; Thu, 05 Sep 2019 00:10:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=globalwebdata.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uVRbrxa7QRFYDAodCfCRmz8mC7s2yboaQ0SnO9dA2WA=; b=lcccCa8L6+QVmFVIhcXmiXsgES
 a+iuYX/dBja0IcITzuBigMsbhbia9H4317Y3wXRtOxpsImCGAnqqqdF0+IcoPseCWTUkFHhNOMteO
 maO2dfFKoP/RwiXYtBNs/owqtsVvvU84WF5k99beTV1gheyoz+laNAIyndSkCVHJWxcYrJLzXTa7N
 duK0JyBBxIVWl1NfIgwcUkS8xOAIC4oji3WIX5poJ6vRYdCWEIalqH+eRaKmP+SULMFHNu7L1WP6C
 FxJE/sx5RgJ2FYEdt4g/4gAMpt6hkCCamrje90DluIgt5+eRXEwBeBRbcOmoZhScp3y939BJ5TeRm
 pNtZJM4Q==;
Received: from [106.51.19.105] (port=20761 helo=RAJESH)
 by n3plcpnl0116.prod.ams3.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <lisa.williams@globalwebdata.com>) id 1i5lu9-005W1S-I8
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 00:10:05 -0700
From: <lisa.williams@globalwebdata.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 5 Sep 2019 15:09:58 +0800
Message-ID: <062b01d563b8$f02904d0$d07b0e70$@globalwebdata.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdVjuOgoeWfFz9ndTRGtQ2AdqJQvxA==
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - n3plcpnl0116.prod.ams3.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - globalwebdata.com
X-Get-Message-Sender-Via: n3plcpnl0116.prod.ams3.secureserver.net: authenticated_id:
 lisa.williams@globalwebdata.com
X-Authenticated-Sender: n3plcpnl0116.prod.ams3.secureserver.net: lisa.williams@globalwebdata.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfNVPItnb2UmmrzffQJypp07qEhxURR/mcD2KtbSKL1jbpAOocIrRuwQKnfJzfbE+nU209y2WcnNNpIY8tDHZ/9O2tMabMhq4wTM1HEY58zPwP53yEMIa
 3EgqvAxHvfKDKLYmhfhWIghdL39a0JpeBH3l3XXqAtlquG/idgfSZeA8v2OVjpPqpRD4mUItRnYKOWq+iXNfsA5iWSi74V5j/YDvUQGg0uVkMaO9HzcIB2Nw
 YtGN5t2hwTw8v+ByelhtKw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_001152_128260_7D687701 
X-CRM114-Status: UNSURE (  -2.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.121.43.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.19.105 listed in dnsbl.sorbs.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] 2019 IBC
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
 
I understand that you were exhibited at IBC 2019 (International Trade Show
for Media, Entertainment & Technology Show) and was wondering if you would
be Interested in acquiring the
Attendee Companies List.
 
We have the most updated records of attendee companies who are participating
In this event. 
 
Information Provided: - Company name, URL, Contact name, Job title, Phone
Number, fax number, physical address, Company size, Email address etc.
 
Our lists is the best source for awareness and can be used for Booth Invites
- Marketing initiatives - Product launch - Brand awareness - increase in
Revenue etc.
 
Let me know if you are interested so that I would ask our sales to provide
counts and cost accordingly.
			
Regards,
Lisa Williams	
B2B Marketing & Tradeshow Specialist

If you do not wish to receive the attendees list, please reply as 'Opt-out'.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
