Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6299D1A0FFE
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 17:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0bkRZZtJtVTZBXO2Em4BF4D1ILNwVVXSYBnkAcrpp4=; b=XznDyd4tjimV2+
	4er8D9K/XbsWYhvXN8LPpIb1GidQhjTM9baCRB0S5LIvjz7kwiwk2tM0Xq/3CUThpo0A1doQELVrH
	JdqclPf9rMrzexzF04M6K05wO57c5VS3PzUyRxegWHVCwgnvt524umQk3JyBxbzsS4lcciSjR9uyN
	ERzQ24RaLmm/38nSK7dzG8psEJduprJkZZDwy9ZatsQrrrOrlujMCyTaAkNxyA+LTptVHvQW4LH8i
	NsT1wJCEJE8usckdBexCz+hoTM7SoSLN7sa2d8njoalvorj8wSmSxWAuQfzPTW+s7hy49zY9g/TGg
	FyAwMPgHp2p8xHzMaejA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpxa-0001ap-4l; Tue, 07 Apr 2020 15:16:18 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpxP-0001Zk-9t
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 15:16:10 +0000
Received: (wp-smtpd smtp.tlen.pl 16094 invoked from network);
 7 Apr 2020 17:16:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1586272561; bh=aEh8MSvmo1pfpEtK6A5NGooIiPjD08UutzXlqNjAtTU=;
 h=Subject:To:Cc:From;
 b=NLIYNjRTwJ/Gun2TDX97xBdE8Uzvvl4nRhA+bXDExLpVb9qNJOVdiHRdI5AYotwRY
 EWp2goMPB0oNyc9GZfemn8ltURQzgwStNgUgF5ZptioXWqnPlzpPG9WkA4F92LUDV5
 8uUJgqhYTvgh18eAxgnUqSvb7m/0Hk/wNDPKZsnU=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 7 Apr 2020 17:16:01 +0200
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>,
 Hannu Nyman <hannu.nyman@iki.fi>
References: <87eeszs9uu.fsf@miraculix.mork.no>
 <b5c15de9-5d32-2a99-922b-22b4fb1056b8@iki.fi>
 <874ktvs62p.fsf@miraculix.mork.no>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <6c55f8f0-7950-bb4f-30e0-d245327a1f86@o2.pl>
Date: Tue, 7 Apr 2020 17:16:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <874ktvs62p.fsf@miraculix.mork.no>
Content-Language: en-US
X-WP-MailID: 68e3482c02b7baaa077080f9ad88ee33
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000004 [4aft]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_081607_673644_848193C7 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.142 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Is it possible to create two images for the
 same device with a different set of DEVICE_PACKAGES?
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

SGkgQmrDuHJuLgoKVyBkbml1IDA3LjA0LjIwMjAgb8KgMTY6NTAsIEJqw7hybiBNb3JrIHBpc3pl
Ogo+IEhhbm51IE55bWFuIDxoYW5udS5ueW1hbkBpa2kuZmk+IHdyaXRlczoKPiAKPj4gSSBkbyBu
b3QgdGhpbmsgdGhhdCB0aGVyZSBpcyBhIG5pY2UgY2xlYW4gc29sdXRpb24sIGFzIEkgZG8gbm90
Cj4+IHJlbWVtYmVyIHNlZWluZyBhIHNvbHV0aW9uIG9mIGRpZmZlcmVudCBwYWNrYWdlcyBmb3Ig
aW5pcmFtZnMsIGZhY3RvcnkKPj4gYW5kIHN5c3VwZ3JhZGUgaW1hZ2VzLgo+Pgo+PiBJIHdvdWxk
IGFwcHJvYWNoIHRoYXQgd2l0aCBhIHR3by1zdGVwIGJ1aWxkIHByb2Nlc3MsIHVzaW5nIHR3byAu
Y29uZmlnIHJlY2lwZXM6Cj4+Cj4+ICogRmlyc3QgYSBidWlsZCB3aXRoIGEgc21hbGxlciAuY29u
ZmlnIHJlY2lwZSB3aXRob3V0IHRoYXQgbGFyZ2UKPj4gUXVhbnRlbm5hIGZpcm13YXJlLiBUaGlz
IGNyZWF0ZXMgdGhlIGluaXRyYW1mcyBpbWFnZSwgKHdoaWNoIHlvdSBjb3B5Cj4+IHRvIGEgc2Fm
ZSBwbGFjZSBiZWZvcmUgdGhlIHNlY29uZCBidWlsZCkKPj4KPj4gKiBUaGVuIGEgc2Vjb25kIGJ1
aWxkIGZyb20gYSByZWNpcGUgaW5jbHVkaW5nIHRoZSBRdWFudGVubmEKPj4gZmlybXdhcmUuIE5v
IG5lZWQgdG8gZG8gIm1ha2UgY2xlYW4iLCBzbyB0aGUgc2Vjb25kIGJ1aWxkIGlzIHJhdGhlcgo+
PiBxdWljay4gVGhhdCBwcm9kdWNlcyB0aGUgZnVsbCBzeXN1cGdyYWRlIGltYWdlLgo+Pgo+PiBJ
biB5b3VyIGJ1aWxkIGF1dG9tYXRpb24gc2NyaXB0cywgdGhvc2UgdHdvIGJ1aWxkcyBjb3VsZCBi
ZSBydW4KPj4gY29uc2VxdXRpdmVseSwgd2l0aCBhIGNvcHkgc3RlcCBiZXR3ZWVuIHRoZW0uCj4+
Cj4+IFRoYXQgd2lsbCBiZSBtdWNoIGVhc2llciB0aGFuIHRyeWluZyB0byBjb2RlIGEgbG9naWMg
aW50byB0aGUgYWN0dWFsCj4+IE9wZW5XcnQgYnVpbGQgTWFrZWZpbGVzLgo+IAo+IFllcywgc3Vy
ZSwgdGhpcyB3aWxsIHdvcmsgZm9yIG15IG93biB1c2UuICBCdXQgaXQgZG9lc24ndCBzb2x2ZSB0
aGUKPiBnZW5lcmFsIHByb2JsZW0sIHdpdGggcHJlLWJ1aWx0IGltYWdlcyBpbnZvbHZlZC4KPiAK
PiBXaGF0IGlmIEkgd2FudCB0byBtYWtlIGEgcmVjaXBlIHRoYXQgd29ya3Mgb24gdGhlIE9wZW5X
cnQgQnVpbGRib3RzPwo+IFRoZSBpZGVhIHdhcyB0byBtYWtlIGZpcnN0IHRpbWUgaW5zdGFsbGF0
aW9uIGFzIGVhc3kgYXMgcG9zc2libGUsIGJ5Cj4gcHJvdmlkaW5nIGJvdGggYW4gaW1hZ2UgdGhh
dCBjYW4gYmUgaW5zdGFsbGVkIGZyb20gT0VNIGFuZCBhbiBpbWFnZSB0aGF0Cj4gZW5hYmxlcyB0
aGUgZnVsbCBoYXJkd2FyZS4KPiAKPiBJIGRpZCBjb21lIHVwIHdpdGggYSBzb3J0IG9mIHdvcmtp
bmcgcHJvb2Ytb2YtY29uY2VwdCBoYWNrLCB3aGVyZSBJIGFkZAo+IGEgYnVpbGQgcnVsZSBsaWtl
ICh5ZXMsIHVnbHkgLSBJJ20gbm90IGV4Y3BlY3RpbmcgdG8gcHVzaCB0aGlzKToKPiAKPiBkZWZp
bmUgQnVpbGQvZmlsdGVyZWQtaW5pdHJhbWZzCj4gCXJtIC1yZiAkKFRBUkdFVF9ESVIpLngKPiAJ
c2VkIC1pIC1lICdzLENPTkZJR19JTklUUkFNRlNfU09VUkNFPSIkKHN0cmlwICQoVEFSR0VUX0RJ
UikpICxDT05GSUdfSU5JVFJBTUZTX1NPVVJDRT0iJChzdHJpcCAkKFRBUkdFVF9ESVIpKS54ICwn
ICQoTElOVVhfRElSKS8uY29uZmlnCj4gCWNwIC1hICQoVEFSR0VUX0RJUikgJChUQVJHRVRfRElS
KS54Cj4gCXJtIC1yZiAkKFRBUkdFVF9ESVIpLngvbGliL2Zpcm13YXJlL3F2ODQwICQoVEFSR0VU
X0RJUikueC91c3IvbGliL29wa2cvaW5mby9xdjg0MC1maXJtd2FyZS4qCj4gCSQoY2FsbCBJbWFn
ZS9CdWlsZEtlcm5lbC9Jbml0cmFtZnMpCj4gZW5kZWYKPiAKPiAKPiBJIHdhcyBqdXN0IGhvcGlu
ZyB0aGVyZSB3b3VsZCBiZSBuaWNlciB3YXlzIHRvIGRvIGl0LgoKSW4gaW5jbHVkZS9rZXJuZWwt
ZGVmYXVsdHMubWsgdGhlcmUgaXMKSU5JVFJBTUZTX0VYVFJBX0ZJTEVTID89ICQoR0VORVJJQ19Q
TEFURk9STV9ESVIpL2ltYWdlL2luaXRyYW1mcy1iYXNlLWZpbGVzLnR4dC4KTWF5YmUgWW91IGNv
dWxkIGFkZCBhIGxvZ2ljIGZvciBpZ25vcmUgZmlsZXMgbGlzdCBpZiB0aGV5IGV4aXN0LiBObyBv
dGhlcgpzb2x1dGlvbiBjb21lcyB0byBteSBtaW5kLiAKCj4gCj4gCj4gCj4gCj4gQmrDuHJuCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo+IAotLSAKVE1OCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
