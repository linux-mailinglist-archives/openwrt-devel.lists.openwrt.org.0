Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F076191F86
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 04:03:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUJS+YW5YTlNDqFwRL3IuK//yOQzM6kfi2Un4sxi1ao=; b=UDhL+u1rf/FRz1
	z3Wf8NI5AoKnplRDSfEajvJjyifVjKvaEZhTQfWOlRnqLk+YD+0kV8d873AsDWy2BTb6WXNbUpJE8
	QjXrvCNRqnWiqspCMXIlAyejmMoN7aSnpvQn0WlKfYp3gKnpBKFVM7MeOsK/YG+bNudeTKgMUJPSq
	StfOWt4ByLp3oi1MDZfcLfYQnE5nY+MEU5QuN4yh8hlcYMPuE825iFz/lJyX3kYgss5SaetFulMk/
	G/uP5CWiDwRTbIqGdxNxDwkwTIiTjlqERcuVBSybsZB3RWtp1bq6yhrs4a+uuifV5UhijQ4hx1zuf
	Oi7wLaSCVPhNbAk/KVBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGwKO-0000bi-Fk; Wed, 25 Mar 2020 03:03:36 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGwKH-0000ax-8T
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 03:03:30 +0000
Received: by mail-ot1-x344.google.com with SMTP id a6so643984otb.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 20:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JSlkIr1P9FzgcfuJLxP765KEpyfSPRTfrdBPRkjHCMM=;
 b=juSgi3uyQnwoqY75cwOhROEzVoEOeYnoB9hnoYQHe/EXMjtQYe88RTia+7Oq46/uiD
 dVMGleOxXpp1wMg0xpjKeyzwHwXGg3Wum3Lx1+5nM3jOjr7JLvUi1aXxWbfZ0WBOCz5V
 hF4pqb+DyvohygFGoDkh/Cju/44ilMm6e7oUCh+3Vqe/zcWSsycecuv277eGxZrS6TAx
 DVCqZJsO1GK44fww5da3fg8L1i9BtCweUdlxrJAcfYm7aiM3nEXVi7PrYBIIJQFsSWPz
 F5k9H+NHa1aKiSxbQmEEqabfZ9zwmmjmiFY1MlQNSeIxkQNTZbW5QXJS+RCGZqvY7OYV
 k1Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JSlkIr1P9FzgcfuJLxP765KEpyfSPRTfrdBPRkjHCMM=;
 b=YYRcfdyl83z0DGtUny6ybX0mYVyvkOzm9qGFUu9EQ1TbJLcsJKHJ08+B2vUI/J2GD7
 vicQRkyyflahNbrzK9ZrwfkFzPeloYsECXdD5HlI3DtasZJXAEPda+oLtEhXPHC553SZ
 FhUy8DF1sh/b7KcuXRF7ZA+dn4FrRH6S6JLP37vmd6QavRX5kzgF4HxHy41fI1YiicZM
 TAqVRUEn7Q/lpVpN4+DO77ZdZdRZj/GByOKuTE9yTCtT5FyYlKPXw/UduapqWpmakzS4
 aZKW04lZt7DPdIOIAbho4vSFCyHv8AI3XvsoFG1TWJ+45PH0nL2F7avKjjZhJKHqx71n
 k6iw==
X-Gm-Message-State: ANhLgQ0d4q0WUpA95Uoa+aWfnekHSeWwnCJXxyWiQ7FhmA3UFlYHxr40
 r1iK3ByhxHR57p/IEH3zzUYd5Iq8hgXiV90D8v5FU/QIDW4=
X-Google-Smtp-Source: ADFU+vvAlp5Ytp8+YuesbB5OQgiY7kdtvyOt7jmvdpD0beeGmvX1hZgaLQwvrQ9LJJqFpPYtOQX5BVNacnrOGxS2/jQ=
X-Received: by 2002:a4a:d749:: with SMTP id h9mr440794oot.15.1585105405685;
 Tue, 24 Mar 2020 20:03:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200320234506.1310362-1-rosenp@gmail.com>
 <20200322144520.GE85632@meh.true.cz>
 <CAKxU2N9CEd0qSYJGxHiU4U9fA-AQve_Jrw4KNwVQP5UMXnBNiw@mail.gmail.com>
In-Reply-To: <CAKxU2N9CEd0qSYJGxHiU4U9fA-AQve_Jrw4KNwVQP5UMXnBNiw@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 24 Mar 2020 20:03:14 -0700
Message-ID: <CAKxU2N9bR1z86eQXMsAp0ugZWMypSJzoxq0rDvNSRMD23wpwng@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_200329_352264_9FC1FB33 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] busybox: fix build with musl 1.2.0
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

T24gU3VuLCBNYXIgMjIsIDIwMjAgYXQgMjoyNSBQTSBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWls
LmNvbT4gd3JvdGU6Cj4KPiBPbiBTdW4sIE1hciAyMiwgMjAyMCBhdCA3OjQ1IEFNIFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+ID4KPiA+IFJvc2VuIFBlbmV2IDxyb3NlbnBA
Z21haWwuY29tPiBbMjAyMC0wMy0yMCAxNjo0NTowNl06Cj4gPgo+ID4gPiBUaGUgU1lTX3NldHRp
bWVvZmRheSBpcyBubyBsb25nZXIgcHJlc2VudC4gVGhhdCBpcywgaXQncyByZXBsYWNlZCB3aXRo
IHRoZQo+ID4gPiB0aW1lMzIgdmFyaWFudC4gVGhlcmUgaXMgbm8gdGltZTY0IHZhcmlhbnQuCj4g
Pgo+ID4gRllJIHVwc3RyZWFtIGVtYWlsICJidXN5Ym94IDEuMzEuMSBidWlsZCBpc3N1ZXMgd2l0
aCBnbGliYy0yLjMxIGFuZCBtdXNsCj4gPiAxLjIuMCJbMV0gbWVudGlvbnMgb3RoZXIgZml4ZXMg
YXMgd2VsbC4gSWYgbW9yZSBmaXhpbmcgaXMgbmVlZGVkLCBpdCB3b3VsZCBiZQo+ID4gbmljZSB0
byBoYW5kbGUgaXQgdmlhIHVwc3RyZWFtIGZpcnN0LCB0aGFua3MuPgo+ID4KPiA+IDEuIGh0dHA6
Ly9saXN0cy5idXN5Ym94Lm5ldC9waXBlcm1haWwvYnVzeWJveC8yMDIwLU1hcmNoLzA4Nzg0My5o
dG1sCj4gSSBsb29rZWQgaW50byB0aG9zZS4gSSBkaWQgbm90IG5lZWQgdG8gYmFja3BvcnQgdGhl
c2UgaW4gb3JkZXIgdG8gZ2V0Cj4gYnVzeWJveCB0byBjb21waWxlLiBJIGFzc3VtZSBpdCB3b3Vs
ZCBicmVhayB1bmRlciBjdXN0b20gY29uZGl0aW9ucy4KPgo+IE5vdGUgdGhhdCB0aGUgbGFzdCBw
YXRjaCBhZGRzIGEgZGVwZW5kZW5jeSBvbiBsaWJydCAocGFydCBvZiBsaWJjIGZvcgo+IG11c2wg
YW5kIHVDbGliYy1uZyBidXQgbm90IGdsaWJjKS4KPgo+IEkgdGhpbmsgdGhpcyBwYXRjaCBpcyBn
b29kIGVub3VnaCBmb3Igbm93LgpUdXJucyBvdXQsIHRoaXMgYnJlYWtzIGJ1aWxkcyBvbiB1Q2xp
YmMtbmcuIFdpbGwgcm9sbCBhIG5ldyB2ZXJzaW9uIHdoZW4gSSBjYW4uCgpJIHF1ZXN0aW9uIHdo
YXQgdGhpcyBwYXRjaCBpcyBmb3IuIE1vcmUgZGV0YWlsczoKaHR0cHM6Ly9naXRodWIuY29tL3N5
c3RlbWQvc3lzdGVtZC9pc3N1ZXMvMTMzMDUjaXNzdWVjb21tZW50LTUyMDQ2MzIzNgoKTXkgcmVh
ZGluZyBvZiBpdCBpcyB0aGF0IGl0J3MgdGhlcmUgZm9yIGttb2QtZnMtZmF0L3VkZi9oZnMgY29t
cGF0aWJpbGl0eS4KCkl0J3MgYWxzbyBkZXByZWNhdGVkLiBIZW5jZSBubyB0aW1lNjQgdmVyc2lv
bi4KCldvbmRlciBpZiB0aGlzIHBhdGNoIHNob3VsZCBzaW1wbHkgYmUgcmVtb3ZlZC4KPiA+Cj4g
PiAtLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
