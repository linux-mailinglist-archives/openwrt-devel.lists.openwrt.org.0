Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677245DFAC
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 10:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvo9OiJ43T5sdv/+waMxhWNTp4nWK2vGvWATQVDiQlk=; b=eDflisUHwXCOmt
	x4WknR/aQjqfzZvmujeogticknC0VXttHEGcFVp8M/DJr7bdSiKuv0dQ5ELCpJVd0ZZKY/cqIHmLz
	JZ3mdrRP1Jg0DFxmoKJSUxdhRSAv4zoZsQ+dKscuBkULcm02Mzf2ArvyOQ6BresXpINY7Fhsrggy9
	kF4svDRQ9I3D7OBtWy3IVAvM4agtCGk0wUDT0qyd6n7O5ns4BmMW3g56QvIYXWhjB9S37hoBmLi/F
	tNCISf8+wkEfQtjIQuM8giLXBuAujRZ3OFFptFVOVAJ7dhIVjWoc2nfXWfwzjNnQd5xQdsI98/Q+m
	QRHqWgPeEeOSuYtWKNuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaX5-0007WK-N9; Wed, 03 Jul 2019 08:22:27 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaWm-0007Vv-04
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 08:22:09 +0000
Received: by mail-io1-xd42.google.com with SMTP id r185so2744741iod.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jul 2019 01:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=eHSiq3hMpCuwOcGXHGuydYOLbgHJuMlmed452m3fn44=;
 b=TckHFwFIc01xiLNQ235wih4YP3SMdF7iOMbbr34he88c24gON6zFLdgCTdlNg5KpYx
 uohtCmMQ08OHRj4c6G3rm5RSJPNJoKCwCI0AcCSQPHqjxHbfq3cwLqMJ62SmMr07ffbH
 q5MpcK+a6fLjLjl8yclUlR+qPvTrQrR4zMhBMBXRwBXioEDp8wlfwEInHxyOm7lnwjPQ
 wu9PyIKmIv3UizlGUuMs73DAsa+YDvgylLTnxs56gnF995rA3pGeT8O2wPxwexZEAJSj
 JyjMHrCi2ujIN0g7JBhdtk1Y/cHdObd4IIO1a10QqbLL75XQiyQ4Gn1empFgjzDNvTYt
 n4TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eHSiq3hMpCuwOcGXHGuydYOLbgHJuMlmed452m3fn44=;
 b=gt/Owv0a19XPW4AI+/gVRUKOQv/5mhwNIG6LK1712zuMOVpiuQUwn3M4CenmSxXQDU
 qNCdphTMHX2ahNVci7OqikoxxiqwteZu1Pzhem1Krh7xQeslYv2yit0Aub2u1cz9kyA0
 cR1A65/mRHiQOuC4gVnzmgziZyUjh5gq7kq89Vtrt0pk1lc7YjaHCQd1DGVA2dbKsbdw
 sN1CreR4TwImwFlfb8VHmeK8/lAGcGgHdPzt01uC3V+j00BaCmVUqXC/ITOqdHxdCyMH
 YnT2aEn+UU+EM8wuhPdcMleWr8w4fWCx1UyiWXV+9wZPIV8YDWWGkJDYLVbD4NBHjx+N
 Sf4A==
X-Gm-Message-State: APjAAAVqXqxylqY/LtS84NAJfQDKNbaTPSZnqkQml9pQ87i0srq4J6aU
 uJBacNhsIdAX7VkVCromkx5kUnfMQwRURvDfN54=
X-Google-Smtp-Source: APXvYqwHsRmS72bTtygt8O7dsQO6mAXWlrTmaivzd29QLu6SEyC9Qx8oQ4uoVvEOlVrqtfcfa8kNwwsfGj0EqY3CWl4=
X-Received: by 2002:a5e:8f42:: with SMTP id x2mr26313222iop.35.1562142126074; 
 Wed, 03 Jul 2019 01:22:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
 <20190623092448.27880-2-kristian.evensen@gmail.com>
 <CACna6rzJXFTuwxAJgou=R9jcY9OR3MRmxqEoZaSSyjqdTYDbHw@mail.gmail.com>
In-Reply-To: <CACna6rzJXFTuwxAJgou=R9jcY9OR3MRmxqEoZaSSyjqdTYDbHw@mail.gmail.com>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Wed, 3 Jul 2019 10:21:54 +0200
Message-ID: <CAKfDRXiNiRKvhfQ4SzREh95nHDnMxo9BqLKvTJfbi-faUPy7QA@mail.gmail.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_012208_043167_DEF9EFB0 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: Update ZBT WE1026 DTS-files
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
Cc: Alex Maclean <monkeh@monkeh.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Mathias Kresin <dev@kresin.me>, musashino.open@gmail.com,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBXZWQsIEp1bCAzLCAyMDE5IGF0IDk6NTUgQU0gUmFmYcWCIE1pxYJlY2tpIDx6YWpl
YzVAZ21haWwuY29tPiB3cm90ZToKPiBXaHkgeW91IGRpZG4ndCBjYyBBbGV4LCBzbyBoZSBjYW4g
YWNrIHlvdXIgcmVsaWNlbnNpbmc/IFlvdSBhbHNvCj4gZGlkbid0IGNhcmUgdG8gbGV0IHVzIGtu
b3cgd2UgbmVlZCBoaXMgYWNrIQoKV2hpbGUgSSBkb24ndCBhcHByZWNpYXRlIHlvdXIgdG9uZSwg
SSBzZWUgbm93IHRoYXQgSSBtYWRlIGEgbWlzdGFrZS4KV2hlbiBjaGVja2luZyB0aGUgaGlzdG9y
eSBvZiB0aGUgZmlsZXMgdGhhdCBJIHJlbGljZW5zZSwgdGhlcmUgYXJlCnRocmVlIG1vcmUgcGVv
cGxlIHRoYXQgc2hvdWxkIGJlIGFkZGVkIHRvIHRoZSBDQy1saXN0IChJTkFHQUtJCkhpcm9zaGks
IE1hdGhpYXMgS3Jlc2luIGFuZCBQZXRyIMWgdGV0aWFyKS4gSSBoYXZlIGRvbmUgc28gbm93LCB0
aGFua3MKZm9yIHNwb3R0aW5nIHRoaXMgYW5kIHRoZSBtaXN0YWtlIHdhcyBvZiBjb3Vyc2Ugbm90
IGludGVudGlvbmFsLgoKQlIsCktyaXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
