Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD38E1E1305
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 18:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mERxciqVUlDKhC6rOT87oSCfGcvaJIhQCGM7IBLb2UQ=; b=rczY9jqKDU9EpquSYKmaUc+zw
	KrtILWNJTrBriYaLpAvKHjqYAxBM5Pr2gdjT1C4p2TsMCQh0Eg9/xAfq/PgO62OOHKKog5oLBMsJF
	aF0pRssNJdV3aZi4RV/puHBrJfAR+/GlOwDSeFiJCsFiwXA9fIRngpMTd4moIZNNYCJbXiQA0i0ty
	q/+RoCu+0QkdnHN0O8Irppi1mujs5oPWRhB3BWC9mtMO76TdCu6qihgFyu/oPf/QRKrKLS98Neh/D
	XkZZi0Y0Kzga8RDNDooPxO/hjWdlxiiYydZ6ugAXJ00+w7fFaQeSj794UF5lepc73Xd7yTSz6d+uB
	Jr5gA5DSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdGHt-0004tV-G8; Mon, 25 May 2020 16:49:17 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdGHi-0004pA-N7
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 16:49:08 +0000
Received: by mail-lf1-x143.google.com with SMTP id z22so10864248lfd.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 May 2020 09:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=10dtwed7MTTEloKJKSK1r4mXXh2sJjCftV+SKjQLyPs=;
 b=ru+RaTDcu9VP2QOg8MYlc8Kmo5SV1IAK7Ce5cGMhic9VMdj8SLcAQfr79sMPGswqez
 jTayLv6QQx1Jex+ZDmOC1YeQxe3CGNQIlmNorMx6OhRkGrHMZd29HJRcjptfB5uwu78s
 wNvDlwDbN2iAu+loE7Ys/4Ti5R4J2680V8uxb/bvDp5wfjRT0CLgyw0MaSVzu0jf0nBo
 hctxAu4EPST/Y4MXtGP8KTyY0cTUTI44hdJ93BAIfJPAwOIXSpHkumlr4Xp6+5ZgcBPx
 8vLHe5pFHHiVLuLunb7DLJTJiodyoqMcTc6LmTA5HC2L4ceTr66Xn4zJFbQMpKoAgKuh
 5Y3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=10dtwed7MTTEloKJKSK1r4mXXh2sJjCftV+SKjQLyPs=;
 b=cD6yF8TzqmMTI8W7yU2Eud/OSBJsvbMJi3DtH9n2dXsqc6QwByw6evZHvdAvC5NlM/
 ZILD0DuxVhiXrc/CDB5cjG3GjaCIXHQAVsCjkhe6AJYV5HCzaiTPgKBKFH7VXucG8GRB
 aGt7cJNHk9G4v0Jgz+Sy5WMPWsVfR2KVUtYT0foRjKEjnDtUnT9lILG0GAFu6FUTxJ/p
 XSPcZBOyxzKvzOxlAr9aTcPMO7C6dyRdUxA1n5qOaaPmFjczQ2lJjyBl2BnQkXy4+fLX
 AwsEe+3iuN0YZARhcqOZpI6hBrkaTq7sib+ZSnT6J5Fj5O+BAdms34jetkgpw5f7LIZD
 KqrQ==
X-Gm-Message-State: AOAM530QQxTXTi0tzxnl7QhQ3CtcTHywIKoL5iZ5eYf2k/7gQaoIbeIx
 8qEi2rbnQa8OfsDbhuXH3myFqF8r
X-Google-Smtp-Source: ABdhPJzONsbM301ZZ4Qo0QJOTdqEKQW1mM+73MC2ERe3t0ypm2GGE+hTo710ub4WsSJZ+VCHHvJqew==
X-Received: by 2002:a05:6512:1047:: with SMTP id
 c7mr15182786lfb.12.1590425344665; 
 Mon, 25 May 2020 09:49:04 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id h26sm5422923lja.0.2020.05.25.09.49.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 09:49:04 -0700 (PDT)
To: Felix Fietkau <nbd@nbd.name>, openwrt-devel@lists.openwrt.org
References: <20200525151908.3930-1-nbd@nbd.name>
 <20200525151908.3930-3-nbd@nbd.name>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <148a6cd9-6e0a-676f-772a-c3eea690a0e4@gmail.com>
Date: Mon, 25 May 2020 18:49:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200525151908.3930-3-nbd@nbd.name>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_094906_773559_ADB01ED7 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH libubox 3/3] blobmsg: fix missing length
 checks
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjUuMDUuMjAyMCAxNzoxOSwgRmVsaXggRmlldGthdSB3cm90ZToKPiBibG9ibXNnX2NoZWNr
X2F0dHJfbGVuIHdhcyBjYWxsaW5nIGJsb2Jtc2dfY2hlY2tfZGF0YSBmb3Igc29tZSwgYnV0IG5v
dCBhbGwKPiBhdHRyaWJ1dGUgdHlwZXMuIFRoZXNlIGNoZWNrcyB3YXMgbWlzc2luZyBmb3IgYXJy
YXlzIGFuZCB0YWJsZXMuCj4gCj4gQWRkaXRpb25hbGx5LCB0aGUgbGVuZ3RoIGNoZWNrIGluIGJs
b2Jtc2dfY2hlY2tfZGF0YSB3YXMgYSBiaXQgb2ZmLCBzaW5jZQo+IGl0IHdhcyBjb21wYXJpbmcg
dGhlIGJsb2Jtc2cgZGF0YSBsZW5ndGggYWdhaW5zdCB0aGUgcmF3IGJsb2IgYXR0ciBsZW5ndGgu
Cj4gCj4gRml4IHRoaXMgYnkgY2hlY2tpbmcgdGhlIHJhdyBibG9iIGxlbmd0aCBhZ2FpbnN0IHRo
ZSBidWZmZXIgbGVuZ3RoIGluCj4gYmxvYm1zZ19oZHJfZnJvbV9ibG9iCj4gCj4gU2lnbmVkLW9m
Zi1ieTogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPgoKVGVzdGVkLWJ5OiBSYWZhxYIgTWnF
gmVja2kgPHJhZmFsQG1pbGVja2kucGw+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
