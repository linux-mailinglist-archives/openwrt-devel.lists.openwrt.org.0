Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CE1F9966
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 20:11:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbL5XRVZOhuBhEP9bDatDDpXtyvWY++Ziw3TOYEmJJw=; b=O6mUhHQLiyzcZj
	bIldzWFuHuWKOQkgIYuy0IcPYjYFbfDiLY0Q26o3RH9KyAReZCmBJxrIsFiag1bdcayN+KPpa+0Na
	pDLSKTPEkyUlwS9R64NldO6n1UGs4lo/XWL+dqSEvMog0ua1hGvkrBNzcadd8F5n72wypVYcOHbiE
	zHEwdZWOpvYItxGyppu2JR/ocaqDHsPgxUL8/7nyFYRSWzqvGeLOsLakA9vLaa0cxcth7W1NaI2IG
	IBWVTsyGidFZcRufWzxBbFWaKxRuak6yp40DTElznafBFImB77DBS/BFdMaE59PJFK365vXGZ7ma6
	rmy9hhDNLNbejZHy3Oww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUbZ4-000709-5q; Tue, 12 Nov 2019 19:10:58 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUbYx-0006zq-2E
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 19:10:52 +0000
Received: by mail-io1-xd41.google.com with SMTP id v17so18877167iol.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 Nov 2019 11:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xtK2jV/dkGpvv6H58NuI0N0BqVJiFhtAByLBRP6ax64=;
 b=Wz0FPBDGXKMSPENbTv52Ryc8hRH550NnvWVKh4O6DcmkEmltrR68HamM6FfBOL5hv1
 M0Hx8AEg9gP+0qB6V9P7pggK2/i8wTtV2zCYM3UYUZkd72T20OGLz8cejD6XCMTp5L0t
 h3iOvG0r/NEamN5Dl6ost/H3sHs3bok/CkwQaw2sKbxpvb55/4zgvjVjC9GmXOm8jozN
 a8+MW/mXNz5rCafQx6y2g1DQlTAzsLunAkSLxFdt1aYJGOJH5WgVWpwDN3GBYl1qjV0p
 q+d70gxe75dybIPKP+W92MwQqHkiwKp1MM1XOlNCapwWlU8pn1DPswNfZPR0Mwupgx6l
 WNjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xtK2jV/dkGpvv6H58NuI0N0BqVJiFhtAByLBRP6ax64=;
 b=FozeQaq+jFF1Q9swxlazqFYXUTEgBqd3kPn2mKJLzc7CQzNKefclEJNyhw1O9PCRfe
 61WSfN/qgfGJ3loWVwXp6gPn6xFlocrqwAY3gESa80s6p/swTPU8YKkYHaFzTMn1S7iI
 Co9isXc3PR+rcDCULobuX8lUSzJKGKbWk7Z7JNdF7imxTGpxbHuKoGV0yjNyrtyISvuG
 aad6SMyAHE02pzWtXUwBgKrf1u2wBydY5OfgNc0LK/ehn5m501d0KMo7GaoJYUpOfIOC
 q1O+SWZlIPH7fdg+E9a1j+RXNqv4aiYP9/UptClAXhVL8HAQiLSpvl44Q+Yut3MbWfA0
 EweA==
X-Gm-Message-State: APjAAAWHPshmq1+wpcSj3sJN7GW1UhbO3Sp0MxGMY9Gbh2Oo8tO7JbfD
 x74l8ssuprdPuHzupAeRJ4O4ravVhPZAu2Dwtgq+N/2A
X-Google-Smtp-Source: APXvYqw2bOORzIxtAoq1hCOHDcEx1r0itviIqaIObYIFRBO8fZvmV+3b6//caKR3UkbpL3W58kYXF1DDaSyrDyt81Gk=
X-Received: by 2002:a02:3208:: with SMTP id j8mr7070537jaa.86.1573585849428;
 Tue, 12 Nov 2019 11:10:49 -0800 (PST)
MIME-Version: 1.0
References: <20191112081625.27695-1-ynezz@true.cz>
In-Reply-To: <20191112081625.27695-1-ynezz@true.cz>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Tue, 12 Nov 2019 11:10:37 -0800
Message-ID: <CAOdf3gpV3Ubg5fJc=rZW5z8M92ymmTZZXSU-E=VqjWfvSnmpWA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_111051_131843_46B96856 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] build: make GCC version 6+ minimal host
 build requirement
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

SGkgUGV0ciwKCkxlIG1hci4gMTIgbm92LiAyMDE5IMOgIDAwOjE2LCBQZXRyIMWgdGV0aWFyIDx5
bmV6ekB0cnVlLmN6PiBhIMOpY3JpdCA6Cj4KPiBDdXJyZW50bHkgbWluaW1hbCBHTlUgc3VwcG9y
dGVkIEdDQyB2ZXJzaW9uIGlzIDcgKGZyb20gTWF5IDIsIDIwMTcpLCBidWlsZGJvdHMKPiBhcmUg
dXNpbmcgZGVmYXVsdCBHQ0MgdmVyc2lvbiA2IG9uIERlYmlhbiA5IChvbGQgc3RhYmxlKSwgY3Vy
cmVudCBEZWJpYW4KPiBzdGFibGUgMTAgaGFzIEdDQyB2ZXJzaW9uIDguCj4KPiBTaWduZWQtb2Zm
LWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IC0tLQo+Cj4gV2hpbGUgYWRkaW5n
IENJIHN1cHBvcnQgaW4gQyBiYXNlZCBwcm9qZWN0cywgSSd2ZSBzdGFydGVkIGFkZGluZyAtV2V4
dHJhIGFzCj4gd2VsbCwgd2hpY2ggc2VlbXMgdG8gd29yayBqdXN0IGZpbmUgZm9yIGdjYzYrLCBi
dXQgaXQncyBhcHBhcmVudGx5IGNhdXNpbmcKPiBpc3N1ZXMgd2l0aCBvbGRlciBHQ0NzIGxpa2Ug
Zm9yIGV4YW1wbGUgZ2NjIDQuOC41WzFdIG9uIENlbnRPUyA3Lgo+Cj4gQWx0aG91Z2ggaXQncyBj
ZXJ0YWlubHkgcG9zc2libGUgdG8gZml4IHRob3NlIGlzc3VlcyBhbmQgbWFrZSBnY2MgNCB1c2Fi
bGUsIEkKPiB0aGluaywgdGhhdCBpdCdzIG5vdCB3b3J0aCB0aGUgYWRkaXRpb25hbCBlZmZvcnQg
YW5kIHJlc291cmNlcyBhbnltb3JlLgo+Cj4gMS4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQv
b3BlbndydC9jb21taXQvNGJhOGY3YjFlZjFlNGMwNjA3MTg1YTQxYzA2YjUxOTI4YzYyNWQ4Ygo+
Cj4gIFJFQURNRSAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgaW5jbHVkZS9wcmVyZXEtYnVp
bGQubWsgfCAxOCArKysrLS0tLS0tLS0tLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL1JFQURNRSBiL1JFQURN
RQo+IGluZGV4IGM4NjdjMWZhNGRhOC4uNmQxMWRkMTE4OGZmIDEwMDY0NAo+IC0tLSBhL1JFQURN
RQo+ICsrKyBiL1JFQURNRQo+IEBAIC0xMSw3ICsxMSw3IEBAIFRvIGJ1aWxkIHlvdXIgb3duIGZp
cm13YXJlIHlvdSBuZWVkIGEgTGludXgsIEJTRCBvciBNYWNPU1ggc3lzdGVtIChjYXNlCj4gIHNl
bnNpdGl2ZSBmaWxlc3lzdGVtIHJlcXVpcmVkKS4gQ3lnd2luIGlzIHVuc3VwcG9ydGVkIGJlY2F1
c2Ugb2YgdGhlIGxhY2sKPiAgb2YgYSBjYXNlIHNlbnNpdGl2ZSBmaWxlIHN5c3RlbS4KPgo+IC1Z
b3UgbmVlZCBnY2MsIGJpbnV0aWxzLCBiemlwMiwgZmxleCwgcHl0aG9uMy41KywgcGVybCwgbWFr
ZSwgZmluZCwgZ3JlcCwgZGlmZiwKPiArWW91IG5lZWQgZ2NjNissIGJpbnV0aWxzLCBiemlwMiwg
ZmxleCwgcHl0aG9uMy41KywgcGVybCwgbWFrZSwgZmluZCwgZ3JlcCwgZGlmZiwKPiAgdW56aXAs
IGdhd2ssIGdldG9wdCwgc3VidmVyc2lvbiwgbGliei1kZXYgYW5kIGxpYmMgaGVhZGVycyBpbnN0
YWxsZWQuCj4KPiAgMS4gUnVuICIuL3NjcmlwdHMvZmVlZHMgdXBkYXRlIC1hIiB0byBvYnRhaW4g
YWxsIHRoZSBsYXRlc3QgcGFja2FnZSBkZWZpbml0aW9ucwo+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L3ByZXJlcS1idWlsZC5tayBiL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rCj4gaW5kZXggNGM1OTkx
MDA1NjM0Li41OGNiYzA2NzhmYTEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9wcmVyZXEtYnVpbGQu
bWsKPiArKysgYi9pbmNsdWRlL3ByZXJlcS1idWlsZC5tawo+IEBAIC0yNywxMiArMjcsNyBAQCAk
KGV2YWwgJChjYWxsIFRlc3RIb3N0Q29tbWFuZCxwcm9wZXItdW1hc2ssIFwKPiAgICAgICAgIHVt
YXNrIHwgZ3JlcCAteEUgMD8wWzAxMl1bMDEyXSkpCj4KPiAgJChldmFsICQoY2FsbCBTZXR1cEhv
c3RDb21tYW5kLGdjYywgXAo+IC0gICAgICAgUGxlYXNlIGluc3RhbGwgdGhlIEdOVSBDIENvbXBp
bGVyIChnY2MpIDQuOCBvciBsYXRlciwgXAo+IC0gICAgICAgJChDQykgLWR1bXB2ZXJzaW9uIHwg
Z3JlcCAtRSAnXig0XC5bOC05XXxbNS05XVwuPyknLCBcCj4gLSAgICAgICBnY2MgLWR1bXB2ZXJz
aW9uIHwgZ3JlcCAtRSAnXig0XC5bOC05XXxbNS05XVwuPyknLCBcCj4gLSAgICAgICBnY2M0OCAt
LXZlcnNpb24gfCBncmVwIGdjYywgXAo+IC0gICAgICAgZ2NjNDkgLS12ZXJzaW9uIHwgZ3JlcCBn
Y2MsIFwKPiAtICAgICAgIGdjYzUgLS12ZXJzaW9uIHwgZ3JlcCBnY2MsIFwKPiArICAgICAgIFBs
ZWFzZSBpbnN0YWxsIHRoZSBHTlUgQyBDb21waWxlciAoZ2NjKSA2IG9yIGxhdGVyLCBcCj4gICAg
ICAgICBnY2M2IC0tdmVyc2lvbiB8IGdyZXAgZ2NjLCBcCj4gICAgICAgICBnY2M3IC0tdmVyc2lv
biB8IGdyZXAgZ2NjLCBcCj4gICAgICAgICBnY2M4IC0tdmVyc2lvbiB8IGdyZXAgZ2NjLCBcCgpE
b24ndCB3ZSBhbHNvIHdhbnQgdG8gcmV2ZXJzZSB0aGUgb3JkZXIgdG8gY2hvb3NlIHRoZSBuZXdl
c3QgY29tcGlsZXIgZmlyc3QgPwpBbHNvIG9uIEZlZG9yYSAzMSwgaW4gdGhlIHBhdGggSSBvbmx5
IGhhdmUgZ2NjLCBub3QgZ2NjOSwgd2hhdCBJIG1hdGNoIGlzOgokIGdjYyAtZHVtcHZlcnNpb24g
fCBncmVwIC1FICdeKDRcLls4LTldfFs1LTldXC4/KScKOQpub3QgdGhlIG90aGVyIHJ1bGVzLCBz
byB0aGlzIHBhdGNoIGJyZWFrcyBhdCBsZWFzdCBGZWRvcmEgMzEKCkV0aWVubmUKCj4gQEAgLTQw
LDE4ICszNSwxMyBAQCAkKGV2YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQsZ2NjLCBcCj4gICAg
ICAgICBnY2MgLS12ZXJzaW9uIHwgZ3JlcCAtRSAnQXBwbGUuKExMVk18Y2xhbmcpJyApKQo+Cj4g
ICQoZXZhbCAkKGNhbGwgVGVzdEhvc3RDb21tYW5kLHdvcmtpbmctZ2NjLCBcCj4gLSAgICAgICBc
blBsZWFzZSByZWluc3RhbGwgdGhlIEdOVSBDIENvbXBpbGVyICg0Ljggb3IgbGF0ZXIpIC0gXAo+
ICsgICAgICAgXG5QbGVhc2UgcmVpbnN0YWxsIHRoZSBHTlUgQyBDb21waWxlciAoNiBvciBsYXRl
cikgLSBcCj4gICAgICAgICBpdCBhcHBlYXJzIHRvIGJlIGJyb2tlbiwgXAo+ICAgICAgICAgZWNo
byAnaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KSB7IHJldHVybiAwOyB9JyB8IFwKPiAg
ICAgICAgICAgICAgICAgZ2NjIC14IGMgLW8gJChUTVBfRElSKS9hLm91dCAtKSkKPgo+ICAkKGV2
YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQsZysrLCBcCj4gLSAgICAgICBQbGVhc2UgaW5zdGFs
bCB0aGUgR05VIEMrKyBDb21waWxlciAoZysrKSA0Ljggb3IgbGF0ZXIsIFwKPiAtICAgICAgICQo
Q1hYKSAtZHVtcHZlcnNpb24gfCBncmVwIC1FICdeKDRcLls4LTldfFs1LTldXC4/KScsIFwKPiAt
ICAgICAgIGcrKyAtZHVtcHZlcnNpb24gfCBncmVwIC1FICdeKDRcLls4LTldfFs1LTldXC4/KScs
IFwKPiAtICAgICAgIGcrKzQ4IC0tdmVyc2lvbiB8IGdyZXAgZysrLCBcCj4gLSAgICAgICBnKys0
OSAtLXZlcnNpb24gfCBncmVwIGcrKywgXAo+IC0gICAgICAgZysrNSAtLXZlcnNpb24gfCBncmVw
IGcrKywgXAo+ICsgICAgICAgUGxlYXNlIGluc3RhbGwgdGhlIEdOVSBDKysgQ29tcGlsZXIgKGcr
KykgNiBvciBsYXRlciwgXAo+ICAgICAgICAgZysrNiAtLXZlcnNpb24gfCBncmVwIGcrKywgXAo+
ICAgICAgICAgZysrNyAtLXZlcnNpb24gfCBncmVwIGcrKywgXAo+ICAgICAgICAgZysrOCAtLXZl
cnNpb24gfCBncmVwIGcrKywgXAo+IEBAIC01OSw3ICs0OSw3IEBAICQoZXZhbCAkKGNhbGwgU2V0
dXBIb3N0Q29tbWFuZCxnKyssIFwKPiAgICAgICAgIGcrKyAtLXZlcnNpb24gfCBncmVwIC1FICdB
cHBsZS4oTExWTXxjbGFuZyknICkpCj4KPiAgJChldmFsICQoY2FsbCBUZXN0SG9zdENvbW1hbmQs
d29ya2luZy1nKyssIFwKPiAtICAgICAgIFxuUGxlYXNlIHJlaW5zdGFsbCB0aGUgR05VIEMrKyBD
b21waWxlciAoNC44IG9yIGxhdGVyKSAtIFwKPiArICAgICAgIFxuUGxlYXNlIHJlaW5zdGFsbCB0
aGUgR05VIEMrKyBDb21waWxlciAoNiBvciBsYXRlcikgLSBcCj4gICAgICAgICBpdCBhcHBlYXJz
IHRvIGJlIGJyb2tlbiwgXAo+ICAgICAgICAgZWNobyAnaW50IG1haW4oaW50IGFyZ2MsIGNoYXIg
Kiphcmd2KSB7IHJldHVybiAwOyB9JyB8IFwKPiAgICAgICAgICAgICAgICAgZysrIC14IGMrKyAt
byAkKFRNUF9ESVIpL2Eub3V0IC0gLWxzdGRjKysgJiYgXAo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
