Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B0714F24E
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 19:39:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoVv398d0zUC+/E9UBnAIPHnq89CYAJD5CbYYQbtPts=; b=GSjxvNacAHqqf0
	gRJ9FcBBSzqrotg7rRwgxdZK45l/dtZ/xV57T2ikQiooY5t6ZPI4riUUHvZY5vbZssBumjbxiKMlf
	PqUuGoFit6QvxJzACSub/GvuCe+4VhP8qk+Ln7u0FsiM/XU6GUt+VL8Wr04u/RRcPGwk8oC7iOvjb
	jYq4JO6kEHyQH6rrkI6j8AbM/evpnYmQElgPR/dsdFR5yCOFSQt7BO76OTmeAW3xFJEItLIPq5m1J
	stJcywJPkuAxj2xNTH4cIT2i1pa5xtQZyxZkgtxLBc/CSqNbOW+8jRSIMMg3JO9E+VBJddYxNYuvJ
	ndlDnI1jKtYpv0uSgQSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixbCR-0001BY-0O; Fri, 31 Jan 2020 18:39:27 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixbCG-0001BE-9M
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 18:39:17 +0000
Received: (wp-smtpd smtp.tlen.pl 27203 invoked from network);
 31 Jan 2020 19:39:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580495953; bh=3kjOMU8IWVUf/U8ZB4yPAi15ux+8kFtnzvh5G+vZnQA=;
 h=Subject:To:From;
 b=a6g4xuouGiji0qlLuQ9lbz/W8bixF16AvkFNyvytpzScwHcw3o4BwBtwBqO5lV6ni
 CXsVYzXnhpUwuyo5xq/BwBEq1HgfvesRnqG3QeNvyVUJDb4oKtrm6VN+cMFdN+Ak9T
 CX/uGYnbgPKWB+5+GaGmHJadlm0yQDaFMNTC3bls=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 19:39:13 +0100
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-5-tomek_n@o2.pl>
 <010401d5d84f$cc88c8b0$659a5a10$@adrianschmutzler.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <55432b84-6089-6701-cf72-d7b64c95b793@o2.pl>
Date: Fri, 31 Jan 2020 19:39:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <010401d5d84f$cc88c8b0$659a5a10$@adrianschmutzler.de>
Content-Language: en-US
X-WP-MailID: 0ebf1bc676e7aa459513cc8432415fe5
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [0dMS]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_103916_489487_5F1F141A 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 4/8] mvebu: image: keep global DTS_DIR
 intact
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDMxLjAxLjIwMjAgb8KgMTc6MDIsIEFkcmlhbiBTY2htdXR6bGVyIHBpc3plOgo+IEhp
LAo+IAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBvcGVud3J0LWRldmVs
IFttYWlsdG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3JnXSBPbgo+PiBC
ZWhhbGYgT2YgVG9tYXN6IE1hY2llaiBOb3dhawo+PiBTZW50OiBGcmVpdGFnLCAzMS4gSmFudWFy
IDIwMjAgMTY6NDYKPj4gVG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gU3Vi
amVjdDogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSCA0LzhdIG12ZWJ1OiBpbWFnZToga2VlcCBnbG9i
YWwgRFRTX0RJUiBpbnRhY3QKPj4KPj4gRG9uJ3QgcmV3cml0ZSBnbG9iYWwgRFRTX0RJUiwgaW5z
dGVhZCwgdXNlIHByb3BlciB2YXJpYWJsZSBmb3IKPj4gc3BlY2lmeWluZyBkZXZpY2VzIGR0cyBk
aXJlY3RvcnkuCj4gCj4gSGF2ZSB5b3UgYnVpbGQtdGVzdGVkIHRoaXM/CgpZZXMsIGltYWdlcyBi
dWlsdCBmaW5lIGJlZm9yZSBzZW5kaW5nIGFuZCBmcm9tIGdsYW5jZSwgdGhleSBsb29rZWQgZmlu
ZS4gV2hhdCBJCmRpZCBub3QgdGVzdCB3YXMgSW1hZ2UgQnVpbGRlci4gV2lsbCBkbyB0aGF0IGFu
ZCBzZW5kIGEgZmVlZGJhY2suCgo+IERFVklDRV9EVFNfRElSIGFuZCBEVFNfRElSIG1pZ2h0IGJl
aGF2ZSBkaWZmZXJlbnRseQo+IHdoZW4gaXQgY29tZXMgdG8gaW5jbHVkZXMgaW4gRFRTIGZpbGVz
Lgo+IFRoYXQncyB3aHkgSSBjb3VsZG4ndCByZXBsYWNlIFNVTlhJX0RUU19ESVIgd2l0aCBERVZJ
Q0VfRFRTX0RJUiB3aGVuIHRvdWNoaW5nCj4gdGhpcyBzb21lIG1vbnRocyBhZ28uCgpUaGUgaXNz
dWUgbWlnaHQgc3RlbSBmcm9tIERFVklDRV9WQVJTIGRlZmluZWQgaW5zaWRlIHRoZSBwcm9maWxl
LCB3aGljaCBtaWdodApiZSBleHBvcnRlZCB0b28gbGF0ZT8gSSdtIG5vdCBzbyBnb29kIGF0IE1h
a2VmaWxlIHN5bnRheCBzbyBtYXliZSBvdGhlcnMgY2FuCmNvbW1lbnQgb24gdGhhdC4KCj4gCj4g
QmVzdAo+IAo+IEFkcmlhbgoKUmVnYXJkcwoKPiAKPj4KPj4gU2lnbmVkLW9mZi1ieTogVG9tYXN6
IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4KPj4gLS0tCj4+ICB0YXJnZXQvbGludXgvbXZl
YnUvaW1hZ2UvTWFrZWZpbGUgfCAyICstCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9p
bWFnZS9NYWtlZmlsZQo+PiBiL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZQo+PiBp
bmRleCBkOWU0YjFhY2NlLi5hZTRkM2I5NTk0IDEwMDY0NAo+PiAtLS0gYS90YXJnZXQvbGludXgv
bXZlYnUvaW1hZ2UvTWFrZWZpbGUKPj4gKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL01h
a2VmaWxlCj4+IEBAIC05MSw3ICs5MSw3IEBAIGVuZGVmCj4+Cj4+ICBkZWZpbmUgRGV2aWNlL0Rl
ZmF1bHQtYXJtNjQKPj4gICAgQk9PVF9TQ1JJUFQgOj0gZ2VuZXJpYy1hcm02NAo+PiAtICBEVFNf
RElSIDo9ICQoRFRTX0RJUikvbWFydmVsbAo+PiArICBERVZJQ0VfRFRTX0RJUiA6PSAkKERUU19E
SVIpL21hcnZlbGwKPj4gICAgSU1BR0VTIDo9IHNkY2FyZC5pbWcuZ3oKPj4gICAgSU1BR0Uvc2Rj
YXJkLmltZy5neiA6PSBib290LXNjciB8IGJvb3QtaW1nLWV4dDQgfCBzZGNhcmQtaW1nLWV4dDQg
fCBnemlwIHwKPj4gYXBwZW5kLW1ldGFkYXRhCj4+ICAgIEtFUk5FTF9OQU1FIDo9IEltYWdlCj4+
IC0tCj4+IDIuMjUuMAo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+PiBvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCj4+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4gCgoKLS0gClRNTgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
