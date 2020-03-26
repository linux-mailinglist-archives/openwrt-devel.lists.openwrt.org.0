Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C581194ADB
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 22:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bgBB52qPA9UaIMvLEmeztAHEcskRn1/Uwwe3dFlxIE=; b=U2FTkaZsbSEil8
	dKPuGReEux5rslsPozhXCScf3agn3xTNs/6ZO/vziABtybyQwBa0WuIY/OU41q6npoDVa2dkrzSxC
	DN43lwCnAaQgunvr8O9uNap0bEl+129T4fIUzuD+oz1QSQG4aOqQS44NIHXT2vcqZFSWjZpcdnUWw
	MX+AqclEk/7SWUJB25xxuWvdS9+dzFRr8RDjcoLcl2okBmon+bguDFVY+DoJmUbyoct8lBH913L4n
	GeBxs72FENTm00yAONeSE/aKe6gQHmR5ItAUZ59hQvV4wuEiqfhWDkZHiRusDBICU1FyHH3DUalRW
	Hs2TjFAGtYcmAsSuWfzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHaJs-00060t-9Y; Thu, 26 Mar 2020 21:45:44 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaJj-00060S-KO
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 21:45:37 +0000
Received: by mail-io1-xd29.google.com with SMTP id a20so7691604ioo.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 14:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sVrXXLylwAmZ0UfxCgNXdqZQFw128+lhszmSn6yQiJw=;
 b=dKeqxoF9sfS9KyUEcesjOn9wL+WXofNBD/5CsE8tybCstIFmwvMVkBdu32pyiwXvzN
 HpoPmrgYxMSKTfZwJnF9kLF4x6la1wW2rrca640yaHbDrqCUb6iMCDjnzLLZzJQ4l65h
 y+L3Hbyz7z8tSAqZYarLer0w7UZ2ilpwaoxudE9bhvt7k4AoOISES7VkbMqpYvPyNbhF
 Do3Ld5MqLXGVLil3QgYS/LEsStYptv27yMdHqsa9WgyLTm93Wy85X+hsPrdy7ApdQO2d
 s8Zw8twu1luMy1mkGUEs6NFn2e0uvlAZazcSBcRO3lnqerngrBNPs/+LCK3xYKQ52Dht
 lUsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sVrXXLylwAmZ0UfxCgNXdqZQFw128+lhszmSn6yQiJw=;
 b=psMGWff609W7oLOECASstznqAzU6hgmizV8GbIBs8V2FbyqdrlsYoFCTammYCrVz1I
 2cy6yJZ4l7P6k18yPinffGTJVHFx0mwTpt23RLWhOe8qhBtFTns7zKvE28U4TnaDNG9t
 PpOfTCICuHN4mBQYc+nnlKWvN5Um9BtiHxQcNjtpfO5yVL4NH5U/9x5XcN+6isTbd/7Q
 FKSIVsic3n6g6/ecF8GtF6jaumQgLUf1rpJY6bi5/HpE3951O7H3L4tmZvzZmo7646B0
 hJ2UnO/Y/VT+5k49FlxoWdHC+i3OcLXQIUV3aU4zR9Eb9c/H+4QoQ9tOj3PeaxHucYZM
 5AhQ==
X-Gm-Message-State: ANhLgQ2xacTHlGUHzS3OPjYjaiRNS3H2wo5mNDzKkbELRgcYidnSeQil
 vdqQ18qeW4VFAltx+Rco2u2/O2apqefIXc8x34s=
X-Google-Smtp-Source: ADFU+vsa3e9iNZLACoBubiMvIF7tnSesdAQtMWFuENeVilwqA+QWwxx0hfPHrjZ/duzRrH3CP6h7Pc1c19vytt+Ln5I=
X-Received: by 2002:a6b:760f:: with SMTP id g15mr9735226iom.56.1585259134032; 
 Thu, 26 Mar 2020 14:45:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
 <CAOX2RU5tXCkq=zhdi_CgP-JVdVS6hN2b1O6Q46vXSd7nGhKpNQ@mail.gmail.com>
In-Reply-To: <CAOX2RU5tXCkq=zhdi_CgP-JVdVS6hN2b1O6Q46vXSd7nGhKpNQ@mail.gmail.com>
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Thu, 26 Mar 2020 22:45:21 +0100
Message-ID: <CA+_ehUyRFpGPZ_wSF_5146HE3KjfC0Og_yFaWRQ=PaZy7xP4_A@mail.gmail.com>
To: Robert Marko <robimarko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_144535_669273_7FF3C4A4 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d29 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] New target IPQ8074 / Asus-ax89x(u)
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

NDAw4oKsIGZvciBhIHJvdXRlci4uLiBsaXR0bGUgdG9vIG11Y2ggZm9yIG5vdy4uLiBhdCBsZWFz
dCB0aGUgZmlybXdhcmUKaXMgb3BlbndydCBiYXNlZCBzbyBBU1VTIHNob3VsZCBwcm92aWRlIEdQ
TC4KCklsIGdpb3JubyBnaW8gMjYgbWFyIDIwMjAgYWxsZSBvcmUgMjI6NDIgUm9iZXJ0IE1hcmtv
Cjxyb2JpbWFya29AZ21haWwuY29tPiBoYSBzY3JpdHRvOgo+Cj4KPgo+IE9uIFRodSwgMjYgTWFy
IDIwMjAgYXQgMjI6MzksIEpvZWwgV2lyxIFtdSBQYXVsaW5nIDxqb2VsQGFlbmVydGlhLm5ldD4g
d3JvdGU6Cj4+Cj4+IEhpIGFsbCwKPj4KPj4gSSByZWNlaXZlZCBteSBheDg5eCB5ZXN0ZXJkYXkg
YW5kIGhhdmUgYWRkZWQgYSBzdHViIHdpa2kgcGFnZSBmb3IgaXQgaGVyZToKPj4KPj4gaHR0cHM6
Ly9vcGVud3J0Lm9yZy90b2gvYXN1cy9ydC1heDg5eAo+Pgo+PiBUaGVyZSBpcyBhIHB1Ymxpc2hl
ZCBidWlsZCBjaGFpbiBmb3IgdGhlIGRldmljZSBmcm9tIEFTVVMgLSBJIGhhdmVuJ3QgdHJpZWQg
Y29tcGlsaW5nIGl0Lgo+PiBJJ3ZlIGRvbmUgc29tZSBwcmVsaW1pbmFyeSBwb2tpbmcgYW5kIG9w
ZW5lZCB0aGUgY2FzZSB1cCAtIGR1bXBlZCB0aGUgYm9vdGxvZy4KPj4KPj4gVmVyeSBpbnRlcmVz
dGluZyBkZXZpY2UgYW5kIGxpa2VseSBhIGdvb2QgdGFyZ2V0IGZvciAxMEdiaXQgYW5kIFdpZmk2
IHdvcmsuCj4KPgo+IExvb2tzIGdyZWF0LCBqdXN0IHRoYXQgdGhlIHByaWNlIHRhZyBpcyBwYWlu
ZnVsLgo+IEl0cyBISzAxIHJlZmVyZW5jZSBib2FyZCBiYXNlZCwgYSBsb3Qgb2Ygc3R1ZmYgaGFz
IGJlZW4gdXBzdHJlYW1lZCBidXQgYSB3aG9sZSBtb3JlIGlzIG1pc3NpbmcgZm9yIElQUTgwN3gg
dXBzdHJlYW0uCj4+Cj4+Cj4+Cj4+IC1Kb2VsCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4+IG9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
