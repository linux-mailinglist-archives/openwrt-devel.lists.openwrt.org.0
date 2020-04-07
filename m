Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F30D1A1500
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 20:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8yiVWyxUrWQMAI07XyQgUQtDh+Re9MZJh55ENzEnpo=; b=j+QtHr2zGPaqqM
	yKfYfKLkizEDXvdaMNKPJXhH0YNuVeE9bP9m3Qhax4qcr3IBOz8wqIcVJ3lo5DvZQ5Q2Rh/7xFP0e
	S42/fZS0R1HUqQFDCl2NJDyBRmsNUqKIidqJoJ2txcDXh+9yY2aNAeFlkGI5iSIb2bVRbQzVCzGJz
	7CbWPRK369zKDtUGYtCDiFvPcfVZe2qCIVo/o4OZPIYPPm2ierPlOzrmrsgaD9T9TJTqxlPsyF8ya
	jjXkPjCzGx0Rd3vXA38Qf9bl9HKStzNsBZFmGwIColh6TtfHl+CxuEuQfHIEj0+rYfhOQgm50Uy86
	4qtSXweO/DN6t8+sXejQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt9D-0003Xe-4U; Tue, 07 Apr 2020 18:40:31 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt79-00074B-AM
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 18:38:26 +0000
Received: from [192.168.180.1] (port=42902 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1jLt74-000529-1U; Tue, 07 Apr 2020 20:38:18 +0200
Received: from vmh.kalnet.hooya.de (unknown [192.168.203.15])
 by admins.marcant.net (Postfix) with ESMTPA id 44D09281F0C;
 Tue,  7 Apr 2020 20:38:18 +0200 (CEST)
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <878sj7s6uj.fsf@miraculix.mork.no>
 <a466a608-b27f-9b56-1a40-9b11866d08e1@marcant.net>
 <87lfn7qosj.fsf@miraculix.mork.no>
From: Andre Valentin <avalentin@marcant.net>
Message-ID: <c12bff01-d03c-c83d-6db2-08c55e32520b@marcant.net>
Date: Tue, 7 Apr 2020 20:38:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <87lfn7qosj.fsf@miraculix.mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113823_585777_5FF78D6E 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] ramips/mt7621 after 5.4 switch
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

SGkhCgpBbSAwNy4wNC4yMCB1bSAxNzo0OSBzY2hyaWViIEJqw7hybiBNb3JrOgo+IEp1c3QgcmVt
ZW1iZXJlZCBhbiBpc3N1ZSBvbiBteSB0b2RvIGxpc3Q6IFRoZXJlIGhhdmUgYmVlbiBzb21lIE1U
VQo+IGhhbmRsaW5nIGNoYW5nZXMgaW4gdGhlIGtlcm5lbCBuZXR3b3JraW5nIEFQSS4gIFRoaXMg
YWZmZWN0ZWQgdGhlCj4gcW1pX3d3YW4gUU1BUCBoYW5kbGluZy4gIEkgYW0gbm90IHN1cmUgYWJv
dXQgdGhlIGN1cnJlbnQgc3RhdHVzLiAgV2lsbAo+IGhhdmUgdG8gZGlnIGEgYml0IG1vcmUuICBC
dXQgdGhpcyBtaWdodCBiZSB5b3VyIHByb2JsZW0uCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB0
YWtpbmcgYSBsb29rIQoKQW5kcsOpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
