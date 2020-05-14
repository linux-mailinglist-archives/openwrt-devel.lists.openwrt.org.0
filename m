Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC49C1D2A96
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 10:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xxJ3ZKZRs3FVItZjZ6LIKDgh+LJ5AVNucLs8aIcOR1M=; b=WGcbKN5n5BG7+FqxX7n3V3AKK
	6DugYaxvTF850yD/Efbl2Ng6jladHaXSejAa/mlouHIO9j3Qpb0p2kXy327rWoMeIbZuWgowF52yg
	sM8fE0fX2V5ANNWrkqz45ESWXAA3fZFlNq1z+qoWfBZOVvKzDD8Unt+x25DGmfDDQuEE+Kld4gyS+
	NjG/DKLh5RKXJnVeN4MWq4FjFX6tm0Aup79+xs9uelUjDLSfv28whGNLvVgOoAfwTUfuzoMMkZ9yy
	46eFdYnRK0ldTh10o1kDjh2deXd6p3Rfz48o9kiyDcH+ZJcjqlS0r1q7iB93vYgmccua6xcvXzcZw
	bBJZ+Xxcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ9Wc-0005vA-N3; Thu, 14 May 2020 08:47:30 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ9WX-0005uk-9B
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 08:47:26 +0000
Received: by mail-wr1-x433.google.com with SMTP id v12so2748717wrp.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 14 May 2020 01:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=CO1l5TT3twfLO7hL6XSH2vaWs0GsQNWK+ktVVkV2350=;
 b=bP+E2e7Wr6cpmejbZguTpTau50ib+r04+/iqL7QjqqpliKKJ0RBx8hsZr/SK+S/NMG
 mUGqkmw2wKJ4Lw90SkuRe7A4E3XIkAkz9NQPU/mpwsTWYqRUHeRNc33v2bcGPIoCXc2w
 ZPsea/yk0tOJJITvutI+Y0p0Ut7G7EfiVbE8jpyJQz/AmnVbo7K3F6Gughea3rkOBwvs
 8XItDTWC5OR8ZLnnsqIAv4qhrW7V2h+eXmT31zi8mDVTkzzW9oxnpM8y80Yu4McycAhX
 BR7upg0AAPLY2CDpiiF7wPe8doMo/FvMObKeXHTW6o/EN8pKz8fbA50gfsrPT4/KkRk/
 bzZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=CO1l5TT3twfLO7hL6XSH2vaWs0GsQNWK+ktVVkV2350=;
 b=WJrZhyqYrZD77DM1d/4jrBTSfLA8MMEBdBk25CSNz7UO4F/vLINXAsbrDGq8BVh1MC
 NVBamauizZNLDdhPmkSMoE0fkMBD84DV43uA7itF3E1KURaJyW3Dqwo9SkJi8Nrps1fE
 SCUmYMVCAdODilh2etBNXxGuYCGnqcKAnKzku61Sv3iZO156m/iR/Pim/tmBqX6Nk+RV
 wmPFx+agxzo5Fs1xVg6xK4t+WdFQCdxGVi3Kavx5hJBa3Rg9N/bRWzrsIlG6s7J2OTDX
 M5qAR3qvH2O4EZw4lBxq9zUqmDmZz8eGXMjlwJIcR5WZhwsdevjA4hRuJ+zAF+17mCr7
 LlxA==
X-Gm-Message-State: AOAM530qxalD0DqyqozL3zEmQzqXDs6jRrUrU7/y1+f2cwC1RaIX6LjT
 3B9OqP6F4ehmbWJSiLFb884W3nwTcJw=
X-Google-Smtp-Source: ABdhPJyD0WifNOd23WTFNgt02U2BKT3oSUi2G+brjPStI7xp5SUS0TMjIMnJj7ip/cJ7psBZZemXqQ==
X-Received: by 2002:adf:dc50:: with SMTP id m16mr4167441wrj.329.1589446043379; 
 Thu, 14 May 2020 01:47:23 -0700 (PDT)
Received: from [10.202.0.7] ([31.31.140.89])
 by smtp.gmail.com with ESMTPSA id c17sm2972043wrn.59.2020.05.14.01.47.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 May 2020 01:47:22 -0700 (PDT)
To: Luochongjun <luochongjun@gl-inet.com>, openwrt-devel@lists.openwrt.org
References: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <21761427-6c39-c3f3-bc07-2b02124e1feb@ncentric.com>
Date: Thu, 14 May 2020 10:47:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_014725_321182_C691948C 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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

Ck9uIDA3LjA1LjIwIDEzOjQ2LCBMdW9jaG9uZ2p1biB3cm90ZToKPiBUaGUgZ2wtZTc1MCBpcyBh
IHBvcnRhYmxlIHRyYXZlbCByb3V0ZXIgdGhhdCBnaXZlcyB5b3Ugc2FmZSBhY2Nlc3MgdG8KPiB0
aGUgaW50ZXJuZXQgd2hpbGUgdHJhdmVsaW5nLgo+Cj4gU3BlY2lmaWNhdGlvbnM6Cj4gLSBTb0M6
IFF1YWxjb21tIEF0aGVyb3MgQVI5NTMxICg2NTBNSHopCj4gLSBSQU06IDEyOCBNQiBERFIyCj4g
LSBGbGFzaDogMTYgTUIgU1BJIE5PUiAoVzI1UTEyOEZWU0cpICsgMTI4IE1CIFNQSSBOQU5EIChH
RDVGMUdRNFVGWUlHKQo+IC0gRXRoZXJuZXQ6IDEwLzEwMDogMXhMQU4KPiAtIFdpcmVsZXNzOiBR
Q0E5NTMxIDIuNEdIeiAoYmduKSArIFFDQTk4ODcgNUdIeiAoYWMpCj4gLSBVU0I6IDF4IFVTQiAy
LjAgcG9ydAo+IC0gU3dpdGNoOiAxeCBzd2l0Y2gKPiAtIEJ1dHRvbjogMXggcmVzZXQgYnV0dG9u
Cj4gLSBPTEVEIFNjcmVlbjogMTI4KjY0IHB4Cj4KPiBGbGFzaCBpbnN0cnVjdGlvbjoKPiBTdXBw
b3J0IGZvciBzeXN1cGdyYWRlIGRpcmVjdGl2ZSB1cGdyYWRlcywgYXMgd2VsbCBhcyBsdWNpIHVw
Z3JhZGVzLgoKCldhcm5pbmc6IFBlcm1hbmVudGx5IGFkZGVkICcxOTIuMTY4LjguMScgKFJTQSkg
dG8gdGhlIGxpc3Qgb2Yga25vd24gaG9zdHMuCgoKQnVzeUJveCB2MS4yOC4zICgpIGJ1aWx0LWlu
IHNoZWxsIChhc2gpCgogwqAgX19fX19fX8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgX19fX19fX1/CoMKgwqDCoMKgwqDCoCBfXwogwqB8wqDCoMKgwqDCoMKgIHwuLS0t
LS0uLS0tLS0uLS0tLS0ufMKgIHzCoCB8wqAgfC4tLS0tLnzCoCB8XwogwqB8wqDCoCAtwqDCoCB8
fMKgIF/CoCB8wqAgLV9ffMKgwqDCoMKgIHx8wqAgfMKgIHzCoCB8fMKgwqAgX3x8wqDCoCBffAog
wqB8X19fX19fX3x8wqDCoCBfX3xfX19fX3xfX3xfX3x8X19fX19fX198fF9ffMKgIHxfX19ffAog
wqDCoMKgwqDCoMKgwqDCoMKgIHxfX3wgVyBJIFIgRSBMIEUgUyBTwqDCoCBGIFIgRSBFIEQgTyBN
CiDCoC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiDCoE9wZW5XcnQgMTguMDYuMSwgcjcyNTgtNWViMDU1MzA2ZgogwqAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo9PT0gV0FSTklORyEgPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpUaGVyZSBpcyBubyByb290IHBhc3N3b3Jk
IGRlZmluZWQgb24gdGhpcyBkZXZpY2UhClVzZSB0aGUgInBhc3N3ZCIgY29tbWFuZCB0byBzZXQg
dXAgYSBuZXcgcGFzc3dvcmQKaW4gb3JkZXIgdG8gcHJldmVudCB1bmF1dGhvcml6ZWQgU1NIIGxv
Z2lucy4KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
cm9vdEBHTC1FNzUwOn4jIGNkIC90bXAvCnJvb3RAR0wtRTc1MDovdG1wIyBzeXN1cGdyYWRlIC1u
IAovdG1wL29wZW53cnQtYXRoNzktbmFuZC1nbGluZXRfZ2wtZTc1MC1zcXVhc2hmcwotc3lzdXBn
cmFkZS5iaW4KRGV2aWNlIGdsLWU3NTAgbm90IHN1cHBvcnRlZCBieSB0aGlzIGltYWdlClN1cHBv
cnRlZCBkZXZpY2VzOiBnbGluZXQsZ2wtZTc1MApJbWFnZSBjaGVjayAnZnd0b29sX2NoZWNrX2lt
YWdlJyBmYWlsZWQuCnJvb3RAR0wtRTc1MDovdG1wIwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
