Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8221D21B7
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 00:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bu8HZv8kb+FOwSwWY+tZafHB/9zmxIrc8gfBVotTk8=; b=baASfCcpgfjkzo
	jYL4X/UAcb6lsgSE7pwBzICi9F5fFbAR4RKCQZA2KCn0K1QYpENyCRbRB1B4GrSDF89vtgTO/u4PR
	tkrUnbB2VWOONAVKMajld+apdPWJTmpG6AkXDQTgJk+tKF7AaNme24c0jcmlkJg0gcRD3ZXOKsYMI
	9oXRuKo4UBmIGYvwNWPnRgYMRBie1FDrrLDMDomX+wNGK3FJYKh72nqP27rzC3V0nvWuCliMNLeO7
	TOBe/yEJsCH4r113dLStjP7MAMax1Y2V7LuCa+YoEgZLUKCPR+ugLdBzdxd78KZ6OCJC6BTOagG+0
	BqrOV83r+SRvIWi15CHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYzYb-0003Wx-7j; Wed, 13 May 2020 22:08:53 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYzYT-0003L3-Qy
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 22:08:47 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 04DM8jOI007226
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 May 2020 16:08:45 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <CAJQUmm6ksoz-JcjM8APRP+C2a1o8ZKpe28bHkODBGh2=vSMEdg@mail.gmail.com>
Date: Wed, 13 May 2020 16:08:44 -0600
Message-Id: <AC3CC0EE-B8F7-490A-A105-B75407446ABF@redfish-solutions.com>
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <86daec20-93b3-f5bb-8b38-98c0e2160d80@wwsnet.net>
 <CAJQUmm7tProVh=+JPp6owcEKQL5W4vUBwmiBNV7KLVMz4TNwqg@mail.gmail.com>
 <c3e4850c-ab4d-7770-7831-be479e8d7bea@wwsnet.net>
 <CAJQUmm5fXkdA+GLZmF=RuusK-Ws16_M=FtKa0HdZfHzsFLaO-w@mail.gmail.com>
 <CAJQUmm6ksoz-JcjM8APRP+C2a1o8ZKpe28bHkODBGh2=vSMEdg@mail.gmail.com>
To: Michael Jones <mike@meshplusplus.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_150845_971131_9150B802 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIE1heSAxMywgMjAyMCwgYXQgMTE6NTkgQU0sIE1pY2hhZWwgSm9uZXMgPG1pa2VAbWVz
aHBsdXNwbHVzLmNvbT4gd3JvdGU6Cj4gCj4gRS5nLiBpZiAvbGliL3VwZ3JhZGUvc2NyaXB0MiBo
YXMgcmV0dXJuZWQsIGF0IGFsbCwgdGhlIHN5c3RlbSBuZWVkcyB0byByZWJvb3QsIGJlY2F1c2Ug
YXQgdGhpcyBwb2ludCAvc2Jpbi91cGdyYWRlZCBzaG91bGQgYmUgdGhlIG9ubHkgcHJvY2VzcyBy
dW5uaW5nLgo+IAo+IGlmIC9saWIvdXBncmFkZS9zY3JpcHQyIGhhcyBub3QgcmV0dXJuZWQgYWZ0
ZXIgMSBob3VyLCB0aGVyZSdzIG5vIGNoYW5jZSB0aGF0IHRoZSB1cGdyYWRlIHdpbGwgc3VjY2Vl
ZCwgc28gcmVib290LiAKPiAKPiBJbiBib3RoIHNpdHVhdGlvbnMsIHRoZSBib2FyZCBtYXkgYmUg
aW4gYSBiYWQgc3RhdGUuIEJ1dCB0aGVyZSdzIG5vdGhpbmcgdGhhdCBjYW4gYmUgZG9uZS4KPiAK
PiAvc2Jpbi91cGdyYWRlZCBvZmZlcnMgdGhlIHVzZXIgbm8gQ0xJIGludGVyYWN0aW9ucyBhdCBh
bGwsIHNvIHRoZXJlJ3Mgbm8gcmVjb3ZlcnkgYWN0aW9ucyB0aGF0IGNvdWxkIGJlIHRha2VuIGV2
ZW4gaWYgdGhlcmUgd2FzIGEgVUFSVCAvIFNlcmlhbCAvIFZHQSArIEtleWJvYXJkIGNvbm5lY3Rp
b24gdG8gdGhlIGJvYXJkIHRvIGFsbG93IHVzZXIgaW50ZXJhY3Rpb24uCgoKQW5kIHdl4oCZcmUg
Y2VydGFpbiB0aGF0IHRoZSBib3ggaXNu4oCZdCBpbiBhIGNvbXByb21pc2VkIHN0YXRlLCB3aGVy
ZSByZWJvb3RpbmcgYW5kIGNvbnRpbnVpbmcgZG9lcyBtb3JlIGhhcm0gdGhhdCBnb29kPwoKTGlr
ZSBjb21pbmcgdXAgd2l0aCBubyBmaXJld2FsbCBvciBhIGNvcnJ1cHRlZCBjb25maWd1cmF0aW9u
PwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
