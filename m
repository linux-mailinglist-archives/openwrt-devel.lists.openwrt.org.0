Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858C75B174
	for <lists+openwrt-devel@lfdr.de>; Sun, 30 Jun 2019 22:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InRxzBbEG68XfUELUr76re/FN1gpxyPlhHRY8s1OEcg=; b=rrVYcvZfZObAXe
	vrFZrwAoOyaowfvdxDYQvl130cfKWwq/CUEJVYNLehu3HXKb+KSTxWuhmGbWGNcb00ByNkcJ7R1Qq
	jfuTM+gMKRAnO9E67a5bJhhcLps844o76+XhPQw3IsR3HF5R6o91fL4efxyn3RmPCGtNbF63e09V1
	Zw1KEAmPy8o0VOVQJMFJoES/8xmJeNcfYtaFeR5e/0V4U7OLIAthggoNIBjO6k2HB+yW1CE+grW9d
	nBoj/cH/CesClDczUnoWCtOey7NgIvJZUJoX9UbqceonZxmJXmMvEQ2Ih0pgrpvH1aVsExQ/+Br4w
	rLZ/0N/ob0/SZfW5OXAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhgHL-0006Pt-Na; Sun, 30 Jun 2019 20:18:27 +0000
Received: from mail.redfish-solutions.com ([66.232.79.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhgHD-0006PU-BH
 for openwrt-devel@lists.openwrt.org; Sun, 30 Jun 2019 20:18:20 +0000
Received: from macmini.redfish-solutions.com (macmini.redfish-solutions.com
 [192.168.1.38]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id x5UKIDA7019059
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 30 Jun 2019 14:18:13 -0600
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <6C7EDAD9-F9C9-4FC5-A298-DF21D36AE562@darbyshire-bryant.me.uk>
Date: Sun, 30 Jun 2019 14:18:13 -0600
Message-Id: <4D849F18-A8C7-4642-8B91-4D1F3C11B668@redfish-solutions.com>
References: <759B3B57-92A3-4688-B531-C4B97EF1289A@redfish-solutions.com>
 <6C7EDAD9-F9C9-4FC5-A298-DF21D36AE562@darbyshire-bryant.me.uk>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3445.104.11)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_131819_471450_3DCD6343 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Problems w/ "make defconfig oldconfig" after
 rebasing
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cj4gT24gSnVuIDMwLCAyMDE5LCBhdCAxOjAzIFBNLCBLZXZpbiBEYXJieXNoaXJlLUJyeWFudCA8
a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyb3RlOgo+IAo+IAo+PiBPbiAzMCBKdW4g
MjAxOSwgYXQgMTk6MjcsIFBoaWxpcCBQcmluZGV2aWxsZSA8cGhpbGlwcF9zdWJ4QHJlZGZpc2gt
c29sdXRpb25zLmNvbT4gd3JvdGU6Cj4+IAo+PiBbc25pcF0KPj4gCj4+IEFueW9uZSBoYXZlIGFu
IGlkZWEgb2Ygd2hhdOKAmXMgZ29pbmcgb24/Cj4gCj4gVGhlcmUgd2VyZSBzb21lIHR3ZWFrcyB0
byBob3cgY29uZmlnIGludGVycHJldGVkIHBhY2thZ2UgZGVmaW5pdGlvbnMuICBVbmZvcnR1bmF0
ZWx5IOKAmG1ha2XigJkgZG9lc27igJl0IHBpY2sgdXAgdGhlIGNoYW5nZXMgdG8gY29uZmln4oCZ
cyBzb3VyY2UsIHNvIGl0IG5lZWRzIHRvIGJlIG1hbnVhbGx5IGNsZWFuZWQuCj4gCj4gbWFrZSAt
QyBzY3JpcHRzL2NvbmZpZyBjbGVhbgo+IAo+IFNob3VsZCBkbyB0aGUgdHJpY2suICBJIGdvdCBi
aXR0ZW4gYnkgdGhpcyB0b28gOi0pCj4gCj4gCj4gQ2hlZXJzLAo+IAo+IEtldmluIEQtQgo+IAo+
IGdwZzogMDEyQyBBQ0IyIDI4QzYgQzUzRSA5Nzc1ICA5MTIzIEIzQTIgMzg5QiA5REUyIDMzNEEK
ClRoYW5rcywgdGhhdCB3b3JrZWQhCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
