Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738BC125CB4
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 09:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LzGUOJfEJx7Za7c1ks7UO2OjBioBav91ngT8hXtqI8=; b=J9j8A6PjWoZr7Q
	80QtyTfQlLmqqCZi/PNxdNkItQ8arXxGPjgQaqJtW1C4yhRReQSXTvrJIwYtjL1yRxslFdJfwg9qg
	9BGbuol3GEzYTUZ3exB9NOjJ2DmoVHQNUi6TM4kGpjrdmdHwhd+k+mZ1adWkB8v6dbWM00+XvbcPO
	aNiUfnLnArCD5iKN4KRfEe3C/4+7W2sLZ39Cz6ytLeww93TwwxnRO9yTpZYOOP19ies/o4QDnTiq6
	Zrtz+1UNkX39yzRAkLyXyUzEWfYRfYJi7Koof7EtGyQe6ZLzD8JOcrqEVJeB+Bxhcio0ZT2IKs/+8
	+sZC0hn6BtSgPMbdx2sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrCs-0004ms-8R; Thu, 19 Dec 2019 08:30:50 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrCl-0004mU-AM
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 08:30:44 +0000
Received: by mail-yb1-xb41.google.com with SMTP id k17so1908624ybp.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Dec 2019 00:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fj6MjzhIcXuvdhKRxfgi/lzdbJechKRn1U41CIesXy0=;
 b=rDWB2lTqq++v13iZnXzuBymTCOszmBnXsMksZLOIof7+CMn2lPO56UG541pB8WAX8m
 z+rAorZnsOFOB7h9Zvfb7AJHZQGii0CzU2CLL0wt829VFbc1i2csOzcUlAofpO0ZKA0O
 wV2ogke/ZfXxFTvDO3nJmLW/vQAkiCHDx57XD07TlFauu6TAk++Ui9VyWYSohkPrK043
 AFtcED5k+UH7BZM7RqHgc8r8PxKNXhN03IOMomsvv6IcBpkAOoyP0JgoJpe6XjERL7s5
 aY3Emki47NaRLSFhHo5uw0BmQ3eQEMdyr10VvOIYx5DDpmFHtUn+8GsVNTvZgMmLhfmH
 +PIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fj6MjzhIcXuvdhKRxfgi/lzdbJechKRn1U41CIesXy0=;
 b=eBXfyS+2LiUW2V8eY7q5ZQmXx9aEoDvAp7iN5OYbECCohpgn+MKxqz9DNaftmjDwpN
 1RZY/ivP2HG7yZuwvO98KccC0XrS4fQFXg6e5rTBed+Vi8gdgsfpDs5QoZEUvQ3i6muq
 Nd1L0HgncxOKh8T/Lg0khbawfRtxQ97sr3jKBhoFBam2JTlqB5GY2ONvmje2kMbwWmyg
 RWmWRkFWRNADXIs+YclATdQsWxGndXLhkIXcQ2CiX5KRjOAUyesY7U/GdPsD5Y3LDt2T
 kg9jqUWae2Nj+Zq9BIHk/h7lzOy0r5kBGPBJEpvWcs3XQBQPHFOJXI16ZOUTsuPbYzqj
 qZPA==
X-Gm-Message-State: APjAAAXCABazL/E3QbCwrX+eKbWZ3je5A7sliyMyzOuegmaHZgNw7bhr
 LCHu5pJI/PSYlZZIC+75XaTaQRZ5syebvxA9K/c=
X-Google-Smtp-Source: APXvYqyyFk5tbiQoe+tKVvugnuA/sxaxtWbhBB5+lZqnhgALL7+Zdm7tdnGFBSVrSPcB2W1/qL/RWxRt2yrmvTVPSHU=
X-Received: by 2002:a25:cbce:: with SMTP id b197mr4806691ybg.2.1576744241600; 
 Thu, 19 Dec 2019 00:30:41 -0800 (PST)
MIME-Version: 1.0
References: <20191217072836.11411-1-zajec5@gmail.com>
 <20191217072836.11411-3-zajec5@gmail.com>
 <20191218114432.rasbfboex2z2xsj5@pali>
In-Reply-To: <20191218114432.rasbfboex2z2xsj5@pali>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 19 Dec 2019 09:30:30 +0100
Message-ID: <CACna6ryc_CF27aNCd0DCU0HPBhywbAfzirVtMjo1YTiGj9nr3A@mail.gmail.com>
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali.rohar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_003043_383069_9DA0AAA0 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH fstools 2/3] libblkid: vfat: Fix reading
 labels which starts with byte 0x05
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
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCAxOCBEZWMgMjAxOSBhdCAxMjo0NCwgUGFsaSBSb2jDoXIgPHBhbGkucm9oYXJAZ21h
aWwuY29tPiB3cm90ZToKPgo+IE9uIFR1ZXNkYXkgMTcgRGVjZW1iZXIgMjAxOSAwODoyODozNSBS
YWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gPiBGcm9tOiBQYWxpIFJvaMOhciA8cGFsaS5yb2hhckBn
bWFpbC5jb20+Cj4gPgo+ID4gY29tbWl0IGU1MjZmNTAzOTE4Y2MyOWQ4YjFjY2YzNmE1YzNhMzQ2
NDVkMmJlNmUgdXBzdHJlYW0uCj4gPgo+ID4gV2hlbiBGQVQgZGlyZWN0b3J5IGVudHJ5IGhhcyBs
ZWFkaW5nIGJ5dGUgMHgwNSBpdCBpcyBpbnRlcnByZXRlZCBhcyBieXRlCj4gPiAweEU1LiBUaGlz
IGlzIGhvdyBGQVQgc3RvcmVzIGZpbGUgbmFtZSB3aGljaCBzdGFydHMgd2l0aCBieXRlIDB4RTUg
YXMKPiA+IGxlYWRpbmcgYnl0ZSBpbiAweEU1IGluIEZBVCBkaXJlY3RvcnkgZW50cnkgbWVhbnMg
dGhhdCBmaWxlIHNsb3QgaXMgZW1wdHkuCj4gPgo+ID4gRml4ZXM6ICM1MzMKPiA+IC0tLQo+ID4g
IGxpYmJsa2lkLXRpbnkvdmZhdC5jIHwgMiArKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvbGliYmxraWQtdGlueS92ZmF0LmMgYi9saWJi
bGtpZC10aW55L3ZmYXQuYwo+ID4gaW5kZXggNDliODY1YS4uOTNlNDA1MyAxMDA2NDQKPiA+IC0t
LSBhL2xpYmJsa2lkLXRpbnkvdmZhdC5jCj4gPiArKysgYi9saWJibGtpZC10aW55L3ZmYXQuYwo+
ID4gQEAgLTE2Nyw2ICsxNjcsOCBAQCBzdGF0aWMgdW5zaWduZWQgY2hhciAqc2VhcmNoX2ZhdF9s
YWJlbChibGtpZF9wcm9iZSBwciwKPiA+ICAgICAgICAgICAgICAgaWYgKChlbnQtPmF0dHIgJiAo
RkFUX0FUVFJfVk9MVU1FX0lEIHwgRkFUX0FUVFJfRElSKSkgPT0KPiA+ICAgICAgICAgICAgICAg
ICAgIEZBVF9BVFRSX1ZPTFVNRV9JRCkgewo+ID4gICAgICAgICAgICAgICAgICAgICAgIERCRyhM
T1dQUk9CRSwgdWxfZGVidWcoIlx0Zm91bmQgZnMgTEFCRUwgYXQgZW50cnkgJWQiLCBpKSk7Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgaWYgKGVudC0+bmFtZVswXSA9PSAweDA1KQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgZW50LT5uYW1lWzBdID0gMHhFNTsKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gZW50LT5uYW1lOwo+ID4gICAgICAgICAgICAgICB9Cj4g
PiAgICAgICB9Cj4KPiBZZXMsIHRoaXMgaXMgbXkgcGF0Y2ggZm9yIHV0aWwtbGludXggcHJvamVj
dCB3aGljaCB3YXMgaW5jbHVkZWQgaW4KPiB1cHN0cmVhbSB0d28geWVhcnMgYWdvLi4uIEl0IHdh
cyBwYXJ0IG9mIG15IGluaXRpYXRpdmUgdG8gZml4IGhhbmRsaW5nCj4gb2YgRkFUIGxhYmVscyBp
biBkaWZmZXJlbnQgTGludXggc29mdHdhcmUsIHNlZSBmb3IgbW9yZSBkZXRhaWxzOgo+IGh0dHBz
Oi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2tlcm5lbC9tc2cyNjQwODkxLmh0bWwKPgo+IERvIHlv
dSBuZWVkIHNvbWUgaGVscCB3aXRoIEZBVCBsYWJlbHM/CgpObyBoZWxwIG5lZWRlZCBhcyBldmVy
eXRoaW5nIHdvcmtzIGNvcnJlY3RseSwgdGhhbmsgeW91IQoKQXMgeW91IGNhbiBzZWUgdmZhdC5j
IGNvcHkgaW4gT3BlbldydCdzIGZzdG9vbHMgcHJvamVjdCB3YXMgcXVpdGUKb3V0ZGF0ZWQuIFBv
cnRpbmcgeW91ciBmaXhlcyBtYWtlcyBpdCB3b3JrIGZvciBtZSBwZXJmZWN0bHkhCgotLQpSYWZh
xYIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
