Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F71183635
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 17:32:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Lp/YSRZnVB7lUS9RsScw4jxRDd8e86GTT36taaBFJE=; b=QBZm3xQt18Vmu4
	4snFVIbwdqxs/BjWlMTBraH+LphUibz2ZyQNtgVvRGt3rq9Gf6GhzU1Es6ZNzuhb5pu5UnNsKomA6
	aMl5oiqQouLm8PiXroDZ8ZyobCFij+BT2u6MW1pmrOUwCMEA5ZAX6JThiVZeBQtfa5JkCwx1FuTGz
	WKQgwmX2XacXWJD5Yxyxr6jajZQfCKV4dBekCp99LK7usmJvlN+EPxL+lTqUaYg7ALkwgQQu1xbum
	tVU/PlVnl12IkLBQrdOZ6go7cNNNZDSIq6bxq122kwnf3bxPEOsP8uMB4LNq4Qjf1oFzog8nxEzck
	QWqFs5sG0Y9X1cXgUb+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQlO-0003UW-1x; Thu, 12 Mar 2020 16:32:50 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQlF-0003U3-Dh
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 16:32:43 +0000
Received: (wp-smtpd smtp.tlen.pl 22001 invoked from network);
 12 Mar 2020 17:32:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1584030757; bh=2CQJ8FS3UnWMzPDDLgGnEQTH73p+JwOS41XZuZe6wk8=;
 h=Subject:To:Cc:From;
 b=MvjF9Gl7FMHZgR7AeJoteuQKaEJQPMloR1nHGtSxQxIZ9tHnNQmump87keJPctG5p
 K7++OyBAOjZJwSBgKng87FmG+FfUdkAdXKwdTsLlyk6E1jHoeaITDn+ZzdtrLseyrl
 iLWlfpnILn0SbpLZJWH/x26OUQJRUl47Y+PAWnLc=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <nbd@nbd.name>; 12 Mar 2020 17:32:37 +0100
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <20200309114302.14383-1-zajec5@gmail.com>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <7e298c65-1426-c4c2-f379-3a98cb1845e4@o2.pl>
Date: Thu, 12 Mar 2020 17:32:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200309114302.14383-1-zajec5@gmail.com>
Content-Language: en-US
X-WP-MailID: 96988517bcc2f056386c277a4b30ab46
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [cYIF]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_093241_781799_7B6CB078 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: drop downstream support for mtd
 unaligned writes
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Tim Harvey <tharvey@gateworks.com>, Felix Fietkau <nbd@nbd.name>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUmFmYcWCLgoKVyBkbml1IDA5LjAzLjIwMjAgb8KgMTI6NDMsIFJhZmHFgiBNacWCZWNraSBw
aXN6ZToKPiBGcm9tOiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gCj4gVGhp
cyBjb2RlIHdhcyBkZXZlbG9wZWQgMTArIHllYXJzIGFnbyB0byBzdXBwb3J0IGZldyBzcGVjaWZp
YyBkZXZpY2VzLgo+IEl0IGRvZXNuJ3QgbWF0Y2ggY3VycmVudCBtdGQgYXJjaGl0ZWN0dXJlIGFu
ZCBpcyBwcm9iYWJseS9ob3BlZnVsbHkgbm90Cj4gbmVlZGVkIGFueW1vcmUuCgpVbmZvcnR1bmF0
ZWx5IGl0IGlzIG5lZWRlZCBmb3IgY3VycmVudGx5IHN1cHBvcnRlZCBkZXZpY2VzIGlmIHdlIHdh
bnQgdG8KcHJvdmlkZSBzeXN1cGdyYWRlIGltYWdlcy4gVGhlIHBvcHVsYXIgZXhhbXBsZSB3b3Vs
ZCBiZSBVYmlxdWl0aSBSb3V0ZXJTdGF0aW9uCihQcm8pLiBJdCBoYXMgIkZJUyBkaXJlY3Rvcnki
IHBhcnRpdGlvbiBhbmQgIlJlZEJvb3QgY29uZmlnIiBvbiBvbmUgZXJhc2UKYmxvY2suIEFsc28g
Z3JlcGluZyB0aGUgdHJlZSByZXZlYWxzIHRoYXQgb3RoZXIgdGFyZ2V0IHVzZSBSZWRCb290LCBh
dGgyNSwKYmNtNjN4eCBhbmQgZ2VtaW5pLiBJZiB0aGF0IGlzc3VlIGFmZmVjdHMgdGhlbT8gSSBk
b24ndCBrbm93LCBzaW5jZSBSZWRCb290IGNhbgpiZSBjb21waWxlZCB3aXRoIGJvdGggb2YgdGhl
c2UgcGFydGl0aW9ucyBvbiBvbmUgZXJhc2UgYmxvY2sgb3Igc2VwYXJhdGUuCgo+IAo+IFByb2Js
ZW1zIG9mIHRoaXMgY29kZSB3aXRoIHJlY2VudCBrZXJuZWxzOgo+IDEuIEl0IGFzc3VtZXMgdGhh
dCBwYXJlbnQgbXRkIGJvdW5kYXJpZXMgYWx3YXlzIGFsbG93IGFjY2Vzc2luZyB3aG9sZQo+ICAg
IGJsb2NrIGRhdGEuIEl0IHdhcyB0cnVlIG9ubHkgZm9yIG1hc3RlciBNVEQgZGV2aWNlIGFuZCBu
b24tdHJlZQo+ICAgIHBhcnRpdGlvbnMuCj4gMi4gTVREX0VSQVNFX1BBUlRJQUwgYWZmZWN0cyBh
bGwgcGFydGl0aW9uIGJsb2NrcyAtIGV2ZW4gdGhvc2UgZnVsbHkKPiAgICBhY2Nlc3NpYmxlIGlu
IGEgc3RhbmRhcmQgd2F5LiBUaGlzIGNvZGUgd2FzIHByb2JhYmx5IGRlc2lnbmVkIGZvcgo+ICAg
IHRpbnkgcGFydGl0aW9ucyBvbmx5Lgo+IDMuIEl0IHNlZW1zIGJyb2tlbiB3aXRoIHN1YnBhcnRp
dGlvbnMuIFVuaW50ZW5kZWQgdXNhZ2Ugb2YgdGhpcyBjb2RlCj4gICAgdHJpZ2dlcmVkIGJ5IHJ1
bl9wYXJzZXJzX2J5X3R5cGUoKSByZXdyaXRlIGNhdXNlZCBpbiBlcmFzaW5nIGNvbnRlbnQKPiAg
ICBvZiBzb21lIHVucmVsYXRlZCBwYXJ0aXRpb25zLiBJdCBtYXkgYmUgY2F1c2VkIGJ5IGluY29y
cmVjdCBvZmZzZXRzCj4gICAgY2FsY3VsYXRpb24uCgpUaGlzIGlzIHByb2JhYmx5IHRoZSBjYXVz
ZSBvZiBGUyMyNDI4WzFdIGJ1Zy4gQmVjYXVzZSBvZiBpdCBJIGRpc2FibGVkCnN5c3VwZ3JhZGUg
aW1hZ2VzWzJdLiBJJ20gZmluZSB3aXRoIGRyb3BwaW5nIHRoZXNlIHBhdGNoZXMsIHNpbmNlIG5v
dyB0aGV5CmNhdXNlIG9ubHkgcHJvYmxlbXMuIFdvdWxkIGJlIG5pY2UgaWYgc29tZW9uZSBjb3Vs
ZCB3cml0ZSBuZXdlci9iZXR0ZXIKaW1wbGVtZW50YXRpb24gb2YgdGhhdCBmZWF0dXJlLCBnbGFk
bHkgd2lsbCB0ZXN0IGFueSBpbXBsZW1lbnRhdGlvbi4KCjEuIGh0dHBzOi8vYnVncy5vcGVud3J0
Lm9yZy9pbmRleC5waHA/ZG89ZGV0YWlscyZ0YXNrX2lkPTI0MjgKMi4gaHR0cHM6Ly9naXQub3Bl
bndydC5vcmcvY2M1MjU2YThiZmEwYmQ1ZmZmNWZmNDJlNmIyZmViZWEwMTFlMWM1OQoKLS0gClRN
TgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
