Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB423A9DBA
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 11:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MyuaKrpTmW7/pzEYOiX9r8ZXWPOg7+mnF6tGLdzvUHE=; b=liYHwLjhvSV6oN/CBowlKjew2
	gZwacJAG4LNVnDwLsSMkbjyOXYsA2ywT2c9faIfl8aQuZaYLviO4F8tA7axv20ZMmtaKXQpeXGhAL
	GIGUZLt0i4NwYF+p8evLTPW4UbDQncfjl/30Octu9/lyxlvTq33K+dUk4CvjKYuID2O0crxMyCfjo
	ViPXh/xVNtg2hMjvgQ9zIfo5DXZ7GTMahtnT5h90hR12rIrAVmgFOadvufUGmjjxi6k834WdGYfEG
	4ZxNoOIYa1Y779N4AJ5kNW3JvmY9Yd5MoXChS13hQ8GLJbBU+rZxNWkRYqba3OJbYivxEUmg+5lOb
	Ae5hGQ1JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ngV-00034Q-Gs; Thu, 05 Sep 2019 09:04:07 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ngL-000345-6W
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 09:03:58 +0000
Received: by mail-lf1-x143.google.com with SMTP id u29so1333612lfk.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 02:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uXnYfn5xzVrCM6AWykR55yeoTVhBkuhwa5WaHlrk4aY=;
 b=BU81aX8iKPP5hM2FLaN14nIQnfHMYgmBeWKg5ipPCBECKpTi7ClKP5l9aHdwEKapHG
 L7l6M+Vwg9bAvE4zQXB2B8C6nng8eEkjJPAXn8yzhOOiFScDVSnpQBPTlfwhe6SyKBtn
 lfv6LLZ6WXFv1K8EvrHEgTE/AXMX9Ek4f3Y8bTm62jy2Ml3Ci9SNaCdiE0sGxBQTN9Ln
 XT++d+UoKz+zJ7wxPi4fhXMLbv9K01UFcosxHxZUoqLo82V0Ej5J04FC53q1Scs3LrJS
 i4WmyLU/9QbL0vfF9eVeEXzRQ4cAgVa244r/u7CpdGnWQtRk+52cBdRYAe395EuigeGs
 6sxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uXnYfn5xzVrCM6AWykR55yeoTVhBkuhwa5WaHlrk4aY=;
 b=e5WVIeT8gj8zpO0uiLkcN5fdjYkwiKHu/lvC3GAC8zHywuYHmqOAkdbbXy+b9g6eFP
 zD4DIjFvHqq0IwB9cx9vAXusIOi+5VflojbSaJLzZGzbmMKUh26vOS3o6xPuucuojR+i
 SbGbo1JnhE3Bivw+x9pvtd3nPPpGUNM+SiAQJCTVRfrbwUcGq/6uERUnOlYicfOtvkHf
 oUNFZ6OiQJ9s7I6cm68poynrh8IrXt/n6AL5a1ucsrev9Pet5MYAiFSycon3Zq2n/gLL
 sI8gJxBUqaM3y0DsbHFs4+9t7M+/iuYCBVqdg86SWuGHsPyuWRbovX37UBplGppjLzAq
 lBZA==
X-Gm-Message-State: APjAAAWSyZNMvj5qHgPL8/AOrta2VsUNTVMDtNMAtpO2YeQhS3jF8XCX
 +XZJfLfF+aHVdm4Lv8MmDqk=
X-Google-Smtp-Source: APXvYqwVHt1k2HnJTLrel0UhzCRFBpr1Pct7kWrL7Y9kBz+RQ1f+JzvUFyUldFgH8LzIxKQWR3UNdA==
X-Received: by 2002:a19:ca07:: with SMTP id a7mr1720968lfg.181.1567674235178; 
 Thu, 05 Sep 2019 02:03:55 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id v1sm318060lfq.89.2019.09.05.02.03.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Sep 2019 02:03:54 -0700 (PDT)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
References: <20190905071315.2057-1-zajec5@gmail.com>
Message-ID: <4f8372ab-1382-a6bd-89db-ed5eeb5dd598@gmail.com>
Date: Thu, 5 Sep 2019 11:03:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190905071315.2057-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_020357_268813_E02D7247 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: use new procd sysupgrade
 $UPGRADE_BACKUP variable
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, jonas.gorski@gmail.com,
 Jo-Philipp Wich <jo@mein.io>, John Crispin <john@phrozen.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMDUuMDkuMjAxOSAwOToxMywgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBJdCdzIGEgdmFyaWFibGUgc2V0IGJ5
IHByb2NkIHRoYXQgc2hvdWxkIHJlcGxhY2UgaGFyZGNvZGVkCj4gL3RtcC9zeXN1cGdyYWRlLnRn
ei4KCk15IHllc3RlcmRheSBleHBsYW5hdGlvbiAmIHF1ZXN0aW9uIHJlZ2FyZGluZyB0aGlzIHdv
cms6CgpbMDk6NDRdIDxybWlsZWNraT4gaSdtIHBsYW5uaW5nIHNvbWUgY2xlYW51cHMgZm9yIHN5
c3VwZ3JhZGUgKyBoYW5kbGluZyBjb25maWcgYmFja3VwcwpbMDk6NDRdIDxybWlsZWNraT4gcmln
aHQgbm93IGEgbG90IG9mIGNvZGUgZGVwZW5kcyBvbiAvdG1wL3N5c3VwZ3JhZGUudGd6IHBhdGgg
KGhhcmRjb2RlZCkKWzA5OjQ0XSA8cm1pbGVja2k+IGknZCBsaWtlICJzeXN1cGdyYWRlIiB1YnVz
IG1ldGhvZCB0byBwYXNzIHRoYXQgcGF0aCBhcyBVUEdSQURFX0JBQ0tVUCBlbnYgdmFyaWFibGUK
WzA5OjQ0XSA8cm1pbGVja2k+IHRoZW4gSSdkIGxpa2UgYWxsIHJlbGV2YW50IGdlbmVyaWMgJiB0
YXJnZXRzIGNvZGUgdG8gdXNlICRVUEdSQURFX0JBQ0tVUApbMDk6NDRdIDxybWlsZWNraT4gSSB0
aGluayBpdCdzIGJldHRlciB0aGFuIGFzc3VtaW5nIC8gaGFyZGNvZGluZyBzb21lIHNwZWNpZmlj
IHBhdGgKWzA5OjQ0XSA8cm1pbGVja2k+IGFueSBvYmplY3Rpb25zIHRvIHRoYXQ/ClswOTo1MF0g
PGpvdz4gbm8sIGl0cyBmaW5lClsxMDowNF0gPHJtaWxlY2tpPiB0aGUgbW9zdCB0cmlja3kgcGFy
dCB3aWxsIGJlIGFib3V0IGNhbGxzIGxpa2U6ClsxMDowNF0gPHJtaWxlY2tpPiBjcCAtYWYgIiRD
T05GX1RBUiIgL21udC8KWzEwOjA1XSA8cm1pbGVja2k+IGlmIHdlIG9uZSBkYXkgZGVjaWRlIHRo
YXQgJENPTkZfVEFSIChvciAkVVBHUkFERV9CQUNLVVApIGNhbiBiZSBlLmcuIC90bXAvZm9vYmFy
LnRneiB0aGVuIGl0IHdpbGwgcmVzdWx0IGluIC9tbnQvZm9vYmFyLnRneiB3aGlsZSBzb21lIG90
aGVyIGNvZGUgZXhwZWN0cyAvbW50L3N5c3VwZ3JhZGUudGd6ClsxMDowNV0gPHJtaWxlY2tpPiBu
b3RoaW5nIGltcG9zc2libGUgdG8gZml4ClsxMDowNV0gPHJtaWxlY2tpPiBqdXN0IHNvbWV0aGlu
ZyB0byBiZSBjYXJlZnVsIGFib3V0ClsxMDowNl0gPGpvdz4gd2VsbCBzaW5jZSB0aGUgdGFyIGFy
Y2hpdmUgaXMgYXBwZW5kZWQgdG8gdGhlIGZpbGVzeXN0ZW0gZXZlbnR1YWxseSBpdCBoYXMgdG8g
c3RheSBvbiBhIGZpeGVkIGxvY2F0aW9uClsxMDowNl0gPGpvdz4gYW5kIGtlZXAgaW4gbWluZCB0
aGF0IHNwYWNlIChpbiBmbGFzaCBhbmQgcmFtKSBpcyBzY2FyY2UsIHNvIGlmIHRoZSBiYWNrdXAg
aXMgbGFyZ2UsIHdlIG1pZ2h0IG5vdCBiZSBhYmxlIHRvIGFmZm9ydCB0byBjb3B5IGl0ClsxMDox
MF0gPHJtaWxlY2tpPiBvawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
