Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F79BF231
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 13:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ER1LWKnCVRUZKbILsKiI00h6Jhks+IFjCyRx+/7b7wo=; b=NnoSdlR7ZQUFC2
	wKsrvFbjmLI/cqXRWBZVYYK0EAFQnfblOmRTyKqZUGjovRipxC1RU3uz0cMotxeQZGs1Xgh1/jB1X
	9XvjXtWtTwC29j4x2PNd/Ukr3hIw8h91e57LSjbLPXXSedXcfHHt1H85jnNzzVxR/jC53rDIaMRBi
	JI+hem4ZjFa/8V9lu3VRmPisn0PMwes9FNhxwtaahZJsTP0XBZhRdLj80pU7mAE4sp3JQrNOE6US2
	E+99gu5pdnD2xZmrgxZjsshVw1Kk2sEyYimZuU0IRZBJ6ZfiM0ntrlJVKt5fZd6eXux1IaSW9Blis
	krcFmOlUqxWAR1IjEoGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSMj-0003OZ-3L; Thu, 26 Sep 2019 11:55:21 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSMb-0003Nm-Kz
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 11:55:15 +0000
Received: by mail-yb1-xb42.google.com with SMTP id 206so198612ybc.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Sep 2019 04:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+HkFg/R+Th5vUTZD7bWbocNnmhAgTliB8YPalzjGoDQ=;
 b=JELLo2vmXqR42xoRQQB/WTCyciiRcm6x/OhbFf7XRKFx8bzV6rjkonbkzuKx8ekQO0
 l/8lLMDhpTjR52Vw0FBq6ZWs7Peo1IhKT5K0vH+IVVx/jcpytZPoxOenGS0dXqeC8JK8
 HJkTtPjvtowYdksjO6YVWy8cbaxWYe5IoD/NRXxqCyjM6X9Jdk1J/woy6LcZ6CtS0gFx
 /cc3vFyxJGh58dRXqW5waWSMNgfhwh3b+XDFtHuQQ9dKM+86OPZ4wQa1EoNd/d73AOy4
 6XN0ZPj93cxBcdAiZBrUluuCtWQl6WE8712RyNCMgOMA2VDyNj3iVExShcZ6qBl0kHaY
 PuWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+HkFg/R+Th5vUTZD7bWbocNnmhAgTliB8YPalzjGoDQ=;
 b=I5qy/rnqX+3iHqxXMUgQPI4OJnGofBMj7Gt6vdYXmvjz8JBGiHbj/CrKsxnFYM4Yth
 hKKleYd9zNuGpTaFijt8234SB9Iz3BfFLrYNScFW/Tx57pbBHDJiVnpDa+y+5Lyh45aQ
 FvT/gWXjoUQEYtynUPtsS4PxaUT9YA0YlzDBdoCS6Mqt3Gp8nvnLoBja4De85qNiWg6u
 LTC0GCUG+Lgf1KytdRXtyO0qecs5r8MCnXbk75PifkI4S8g+FgncEO415Jp7oHLb9/pz
 DqKLj8FwgSAvADpjbQbKbAv0J+29CxpxDd9zzsydrWVlXMxHrzWiScnvFUhO0x8s3fMD
 WaQw==
X-Gm-Message-State: APjAAAWjChQqUuJOWpoJWcYueeFSyD0TpPNQTZVq1xJGktHCI1zW7L79
 l3/rCO12xjic5XjkP1xqcadqX8ILRoH9RVsM7Dg=
X-Google-Smtp-Source: APXvYqzDq1+J6uPKwSnR0YZ7ruh5+OAN6lhbWq+iG1lLg1cYEsLECfvs0ykUXFlFQGXc7w+TIteNwROUSckkkwXRv5E=
X-Received: by 2002:a5b:4d:: with SMTP id e13mr1737275ybp.455.1569498912048;
 Thu, 26 Sep 2019 04:55:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190920133708.15313-1-zajec5@gmail.com>
 <20190920140143.GA30514@w1.fi>
In-Reply-To: <20190920140143.GA30514@w1.fi>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 26 Sep 2019 13:55:00 +0200
Message-ID: <CACna6rwi6ZmE5-zJvP1X8homzMGkdVfAcMWpciW6-G645odSYA@mail.gmail.com>
To: Jouni Malinen <j@w1.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_045513_719472_64DB381A 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH RFC] cfg80211: add new command for
 reporting wiphy crashes
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
Cc: wpa_supplicant <hostap@lists.infradead.org>,
 Network Development <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Johannes Berg <johannes@sipsolutions.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UmVzZW5kaW5nIGZyb20gbXkgc3Vic2NyaWJlZCBlLW1haWwKCk9uIDIwLjA5LjIwMTkgMTY6MDEs
IEpvdW5pIE1hbGluZW4gd3JvdGU6Cj4gT24gRnJpLCBTZXAgMjAsIDIwMTkgYXQgMDM6Mzc6MDhQ
TSArMDIwMCwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+PiBIYXJkd2FyZSBvciBmaXJtd2FyZSBp
bnN0YWJpbGl0eSBtYXkgcmVzdWx0IGluIHVudXNhYmxlIHdpcGh5LiBJbiBzdWNoCj4+IGNhc2Vz
IHVzdWFsbHkgYSBoYXJkd2FyZSByZXNldCBpcyBuZWVkZWQuIFRvIGFsbG93IGEgZnVsbCByZWNv
dmVyeQo+PiBrZXJuZWwgaGFzIHRvIGluZGljYXRlIHByb2JsZW0gdG8gdGhlIHVzZXIgc3BhY2Uu
Cj4KPiBXaHk/IFNob3VsZG4ndCB0aGUgZHJpdmVyIGJlIGFibGUgdG8gaGFuZGxlIHRoaXMgb24g
aXRzIG93biBzaW5jZSBhbGwKPiB0aGUgcHJldmlvdXMgY29uZmlndXJhdGlvbiB3YXMgZG9uZSB0
aHJvdWdoIHRoZSBkcml2ZXIgYW55d2F5LiBBcyBmYXIgYXMKPiBJIGtub3csIHRoZXJlIGFyZSBk
cml2ZXJzIHRoYXQgZG8gaW5kZWVkIHRyeSB0byBkbyB0aGlzIGFuZCBoYW5kbGUgaXQKPiBzdWNj
ZXNzZnVsbHkgYXQgbGVhc3QgZm9yIHN0YXRpb24gbW9kZS4gQVAgbW9kZSBtYXkgYmUgbW9yZSBj
b21wbGV4LCBidXQKPiBmb3IgdGhhdCBvbmUsIEkgZ3Vlc3MgaXQgd291bGQgYmUgZmluZSB0byBk
cm9wIGFsbCBhc3NvY2lhdGlvbnMgKGFuZAo+IHByb3ZpZGUgaW5kaWNhdGlvbiBvZiB0aGF0IHRv
IHVzZXIgc3BhY2UpIGFuZCBqdXN0IHJlc3RhcnQgdGhlIEJTUy4KCkluZGVlZCBteSBtYWluIGNv
bmNlcnQgaXMgQVAgbW9kZS4gSSdtIGFmcmFpZCB0aGF0IGNmZzgwMjExIGRvZXNuJ3QKY2FjaGUg
YWxsIHNldHRpbmdzLCBjb25zaWRlciBlLmcuIG5sODAyMTFfc3RhcnRfYXAoKS4gSXQgYnVpbGRz
CnN0cnVjdCBjZmc4MDIxMV9hcF9zZXR0aW5ncyB1c2luZyBpbmZvIGZyb20gbmw4MDIxMSBtZXNz
YWdlIGFuZApwYXNzZXMgaXQgdG8gdGhlIGRyaXZlciAocmRldl9zdGFydF9hcCgpKS4gT25jZSBp
dCdzIGRvbmUgaXQKY2FjaGVzIG9ubHkgYSBzbWFsbCBzdWJzZXQgb2YgYWxsIHNldHVwIGRhdGEu
CgpJbiBvdGhlciB3b3JkcyBkcml2ZXIgZG9lc24ndCBoYXZlIGVub3VnaCBpbmZvIHRvIHJlY292
ZXIgaW50ZXJmYWNlcwpzZXR1cC4KCgo+PiBUaGlzIG5ldyBubDgwMjExIGNvbW1hbmQgbGV0cyB1
c2VyIHNwYWNlIGtub3duIHdpcGh5IGhhcyBjcmFzaGVkIGFuZCBoYXMKPj4gYmVlbiBqdXN0IHJl
Y292ZXJlZC4gV2hlbiBhcHBsaWNhYmxlIGl0IHNob3VsZCByZXN1bHQgaW4gc3VwcGxpY2FudCBv
cgo+PiBhdXRoZW50aWNhdG9yIHJlY29uZmlndXJpbmcgYWxsIGludGVyZmFjZXMuCj4KPiBGb3Ig
bWUsIHRoYXQgaXMgbm90IHJlYWxseSAicmVjb3ZlcmVkIiBpZiBzb21lIGFkZGl0aW9uYWwKPiBy
ZWNvbmZpZ3VyYXRpb24gc3RlcHMgYXJlIG5lZWRlZC4uIEknZCBsaWtlIHRvIGdldCBhIG1vcmUg
ZGV0YWlsZWQgdmlldwo+IG9uIHdoYXQgZXhhY3RseSBtaWdodCBuZWVkIHRvIGJlIHJlY29uZmln
dXJlZCBhbmQgaG93IHdvdWxkIHVzZXIgc3BhY2UKPiBrbm93IHdoYXQgZXhhY3RseSB0byBkby4g
T3Igd291bGQgdGhlIHBsYW4gaGVyZSBiZSB0aGF0IHRoZSBkcml2ZXIgd291bGQKPiBub3QgZXZl
biBpbmRpY2F0ZSB0aGlzIGNyYXNoIGlmIGl0IGlzIGFjdHVhbGx5IGFibGUgdG8gaW50ZXJuYWxs
eQo+IHJlY292ZXIgZnVsbHkgZnJvbSB0aGUgZmlybXdhcmUgcmVzdGFydD8KCkkgbWVhbnQgdGhh
dCBoYXJkd2FyZSBoYXMgYmVlbiByZWNvdmVyZWQgJiBpcyBvcGVyYXRpb25hbCBhZ2FpbiAoZHJp
dmVyCmNhbiB0YWxrIHRvIGl0KS4gSSBleHBlY3RlZCB1c2VyIHNwYWNlIHRvIHJlY29uZmlndXJl
IGFsbCBpbnRlcmZhY2VzCnVzaW5nIHRoZSBzYW1lIHNldHRpbmdzIHRoYXQgd2VyZSB1c2VkIG9u
IHByZXZpb3VzIHJ1bi4KCklmIGRyaXZlciB3ZXJlIGFibGUgdG8gcmVjb3ZlciBpbnRlcmZhY2Vz
IHNldHVwIG9uIGl0cyBvd24gKHdpdGggYSBoZWxwCm9mIGNmZzgwMjExKSB0aGVuIHVzZXIgc3Bh
Y2Ugd291bGRuJ3QgbmVlZCB0byBiZSBpbnZvbHZlZC4KCgo+PiBJJ2QgbGlrZSB0byB1c2UgdGhp
cyBuZXcgY2ZnODAyMTFfY3Jhc2hfcmVwb3J0KCkgaW4gYnJjbWZtYWMgYWZ0ZXIgYQo+PiBzdWNj
ZXNzZnVsIHJlY292ZXJ5IGZyb20gYSBGdWxsTUFDIGZpcm13YXJlIGNyYXNoLgo+Pgo+PiBMYXRl
ciBvbiBJJ2QgbGlrZSB0byBtb2RpZnkgaG9zdGFwZCB0byByZWNvbmZpZ3VyZSB3aXBoeSB1c2lu
ZyBhCj4+IHByZXZpb3VzbHkgdXNlZCBzZXR1cC4KPgo+IFNvIHRoaXMgaW1wbGllcyB0aGF0IGF0
IGxlYXN0IHNvbWV0aGluZyB3b3VsZCBuZWVkIHRvIGhhcHBlbiBpbiBBUCBtb2RlLgo+IERvIHlv
dSBoYXZlIGEgbGlzdCBvZiBpdGVtcyB0aGF0IHRoZSBkcml2ZXIgY2Fubm90IGRvIG9uIGl0cyBv
d24gYW5kIHdoeQo+IGl0IHdvdWxkIGJlIGJldHRlciB0byBkbyB0aGVtIGZyb20gdXNlciBzcGFj
ZT8KCkZpcnN0IG9mIGFsbCBJIHdhcyB3b25kZXJpbmcgaG93IHRvIGhhbmRsZSBpbnRlcmZhY2Vz
IGNyZWF0aW9uLiBBZnRlciBhCmZpcm13YXJlIGNyYXNoIHdlIGhhdmU6CjEpIEludGVyZmFjZXMg
Y3JlYXRlZCBpbiBMaW51eAoyKSBObyBjb3JyZXNwb25zaW5nIGludGVyZmFjZXMgaW4gZmlybXdh
cmUKClN5bmNpbmcgdGhhdCAocmUtY3JlYXRpbmcgaW4tZmlybXdhcmUgZmlybXdhcmVzKSBtYXkg
YmUgYSBiaXQgdHJpY2t5CmRlcGVuZGluZyBvbiBhIGRyaXZlciBhbmQgaGFyZHdhcmUuIEZvciBz
b21lIGNhc2VzIGl0IGNvdWxkIGJlIGVhc2llciB0bwpkZWxldGUgYWxsIGludGVyZmFjZXMgYW5k
IGFzayB1c2VyIHNwYWNlIHRvIHNldHVwIHdpcGh5IChjcmVhdGUgcmVxdWlyZWQKaW50ZXJmYWNl
cykgYWdhaW4uIEknbSBub3Qgc3VyZSBpZiB0aGF0J3MgYWNjZXB0YWJsZSB0aG91Z2g/CgpJZiB3
ZSBhZ3JlZSBpbnRlcmZhY2VzIHNob3VsZCBzdGF5IGFuZCBkcml2ZXIgc2ltcGx5IHNob3VsZCBj
b25maWd1cmUKZmlybXdhcmUgcHJvcGVybHksIHRoZW4gd2UgbmVlZCBhbGwgZGF0YSBhcyBleHBs
YWluZWQgZWFybGllci4gc3RydWN0CmNmZzgwMjExX2FwX3NldHRpbmdzIGlzIG5vdCBhdmFpbGFi
bGUgZHVyaW5nIHJ1bnRpbWUuIEhvdyBzaG91bGQgd2UKaGFuZGxlIHRoYXQgcHJvYmxlbT8KCgo+
PiBJJ20gT3BlbldydCBkZXZlbG9wZXIgJiB1c2VyIGFuZCBJIGdvdCBhbm5veWVkIGJ5IG15IGRl
dmljZXMgbm90IGF1dG8KPj4gcmVjb3ZlcmluZyBhZnRlciB2YXJpb3VzIGZhaWx1cmVzLiBUaGVy
ZSBhcmUgdGhpbmdzIEkgY2Fubm90IGZpeCAoaHcKPj4gZmFpbHVyZXMgb3IgY2xvc2VkIGZ3IGNy
YXNoZXMpIGJ1dCBJIHN0aWxsIGV4cGVjdCBteSBkZXZpY2VzIHRvIGdldAo+PiBiYWNrIHRvIG9w
ZXJhdGlvbmFsIHN0YXRlIGFzIHNvb24gYXMgcG9zc2libGUgb24gdGhlaXIgb3duLgo+Cj4gSSBm
dWxseSBhZ3JlZSB3aXRoIHRoZSBhdXRvIHJlY292ZXJ5IGJlaW5nIGltcG9ydGFudCB0aGluZyB0
byBjb3ZlciBmb3IKPiB0aGlzLCBidXQgSSdtIG5vdCB5ZXQgY29udmluY2VkIHRoYXQgdGhpcyBu
ZWVkcyB1c2VyIHNwYWNlIGFjdGlvbi4gT3IgaWYKPiBpdCBkb2VzLCB0aGVyZSB3b3VsZCBuZWVk
IHRvIGJlIG1vcmUgZGV0YWlsZWQgd2F5IG9mIGluZGljYXRpbmcgd2hhdAo+IGV4YWN0bHkgaXMg
bmVlZGVkIGZvciB1c2VyIHNwYWNlIHRvIGRvLiBUaGUgcHJvcG9zZWQgY2hhbmdlIGhlcmUgaXMg
anVzdAo+IHNheWluZyAiaGV5LCBJIGNyYXNoZWQgYW5kIGRpZCBzb21ldGhpbmcgdG8gZ2V0IHRo
ZSBoYXJkd2FyZS9maXJtd2FyZQo+IHJlc3BvbmRpbmcgYWdhaW4iIHdoaWNoIGRvZXMgbm90IHJl
YWxseSB0ZWxsIG11Y2ggdG8gdXNlciBzcGFjZSBvdGhlcgo+IHRoYW4gcG90ZW50aWFsbHkgcmVx
dWlyaW5nIGZ1bGwgZGlzYWJsZSArIHJlLWVuYWJsZSBmb3IgdGhlIHJlbGF0ZWQKPiBpbnRlcmZh
Y2VzLiBBbmQgdGhhdCBpcyBzb21ldGhpbmcgdGhhdCBzaG91bGQgbm90IGFjdHVhbGx5IGJlIGRv
bmUgaW4KPiBhbGwgY2FzZXMgb2YgZmlybXdhcmUgY3Jhc2hlcyBzaW5jZSB0aGVyZSBhcmUgZHJp
dmVycyB0aGF0IGhhbmRsZQo+IHJlY292ZXJ5IGluIGEgbWFubmVyIHRoYXQgaXMgaW4gcHJhY3Rp
Y2UgY29tcGxldGVseSB0cmFuc3BhcmVudCB0byB1c2VyCj4gc3BhY2UuCgpJIHdhcyBhaW1pbmcg
Zm9yIGEgYnJ1dGFsIGZvcmNlIHNvbHV0aW9uOiBqdXN0IG1ha2UgdXNlciBzcGFjZQppbnRlcmZh
Y2VzIG5lZWQgYSBmdWxsIHNldHVwIGp1c3QgYXQgdGhleSB3ZXJlIGp1c3QgY3JlYXRlZC4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
