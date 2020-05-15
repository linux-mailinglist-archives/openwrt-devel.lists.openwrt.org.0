Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223461D42D2
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 03:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xeGD5GNc1bn0mZCclKthqJH6djrrihP+SBSipNbAvdE=; b=W/o7nqgy20n8L4
	a3StVzaH4tzFyma+Eoi9LFPrRhUvFH+TqQBERSf4riR3sc2h2ZNNHU9l4VaVK7m04eLrtaLkfULDF
	Y8ugQ+xchj4P8JHa5U123j+WLILJZ/L8srKs4ECbJC++C5O/LigTYfVTaAOgLMz+IMxreoBf7pBCj
	lxqlG+TALDjquJR4xUuhNnwYFnMWo5zjgWh+HfOvlS6XW9XCbFtuaFdHnG2rsq5B69Xu7PROWv/lD
	/KgY3+XIs4jpGw6JgHqa3Fumhd4uyEVvraJacHfdTGoS4wokKwWScL0AwWspn/t6++hV5rIYdStPR
	FVWX7tlo7SRVTP2vegvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZP59-0003Y2-VS; Fri, 15 May 2020 01:24:11 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZP51-0003Wp-A9
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 01:24:07 +0000
Received: from [192.168.1.19] (iphoneXS-philip.redfish-solutions.com
 [192.168.1.19]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 04F1NtFp015148
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT);
 Thu, 14 May 2020 19:23:55 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 14 May 2020 19:23:53 -0600
Message-Id: <313EC804-9739-435A-92C2-DD394F9B3ADF@redfish-solutions.com>
References: <fa5473bd-4e17-1826-9092-67c667f09194@wwsnet.net>
In-Reply-To: <fa5473bd-4e17-1826-9092-67c667f09194@wwsnet.net>
To: Jo-Philipp Wich <jo@mein.io>
X-Mailer: iPhone Mail (17E262)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_182403_441488_DCEEFF11 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/1] firewall3: harden string
 functions that might overflow
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

V2hhdCBzaG91bGQgSSB1c2UgaW5zdGVhZCBvZiBzdHJsY3B5IG9yIHN0cmNweT8KClNlbnQgZnJv
bSBteSBpUGhvbmUKCj4gT24gTWF5IDE0LCAyMDIwLCBhdCAxMTowNCBBTSwgSm8tUGhpbGlwcCBX
aWNoIDxqb0BtZWluLmlvPiB3cm90ZToKPiAKPiDvu79IaSwKPiAKPiB0aGUgc3ByaW50ZigpIHRv
IHNucHJpbnRmKCkgY2hhbmdlcyBhcmUgZmluZSB0byBtZS4gUGxlYXNlIG9taXQgdGhlCj4gY29u
dmVyc2lvbnMgdG8gc3RybGNweSgpIGFuZCBwbGVhc2UgZG9uJ3QgdXNlIGZtZW1vcGVuKCkuCj4g
Cj4gfiBKbwo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
