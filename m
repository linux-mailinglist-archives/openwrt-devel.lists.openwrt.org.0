Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DC2BEB52
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 06:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W4riG1ceu0qO6Prmd617mM4JLBNoDFCFD2jcs+IRzaA=; b=X/gBIwqpmpuwa281n4oF0uOW7
	yB/2o687UUzjU79hQDLHa0Uw0XK5exAoUSKDwyV0+JFhyW/dFd/YlLzOhSIrfdRPsRy40fYWZuk3k
	oaBaIJgnkrZkSPsKGxyQIjKCAft7avm40Kb/FXmIDurMlqkWLwkOYPEbIRaToHQ771brHLLvCFY+G
	ZWw1FCyhJoBAl1g5qTjLhAnAqs5Mq9OG8gT8x+kfOOg2zH8TRtVV+FMg+gf75lPXE3gQ8ipMl8iBG
	rAlkw/eUlf92pNrjWFnjgD34O2aH5+1QpYrhGt9NrulA+V3c4hUu+Os+KtiMo/DwVvwt0eTXTpJwy
	yS/iAo2ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDLNU-00071Z-KM; Thu, 26 Sep 2019 04:27:40 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDLNE-00071C-6N
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 04:27:25 +0000
Received: by mail-lj1-x244.google.com with SMTP id y3so647788ljj.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 21:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NK7kIuSdZ8y2/qSZbFtp9mv6k1XvQ3hNVNpfRNZ8PuQ=;
 b=f3HY+F3piGGg1X0/sd/rfJfBplq8AgZVoo8edBy1Ajs29QpAQgRpPoT8Re6zWWZdB4
 Jnp5Xars2HwKIm2fKQ+/ETRpOpNgP1Jfri57tBzZ9FVi1LaNtHSl/Jj80XVGKT78SFGw
 3Tmvdy31+49ArGeE6u7wLPrkO1azwYwgNh7qu7bZYYF8moqC5UVyIl7rwLTNbLOZqyw3
 1rvFjO3HahLdbZwOdcinEJfK7p7bBYS9gIz1q+Syhg0eJ80AOPBEMXiXAO0DNK9XZppp
 XkMNGtsdCahVHU4S6CPyhZZVQu6aVBTjodeSUKu8rME+M8JVDxBxBBmZG7s58tx5gPox
 EXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NK7kIuSdZ8y2/qSZbFtp9mv6k1XvQ3hNVNpfRNZ8PuQ=;
 b=Be2A750qNhzKfKeYW6KpYa9U9dNIvB6NRN1dDN6fDV5kNqdkjNHE02xe55wBSXI6U1
 3+eAOYpO5DaersaonTvUMDME8AEwiTWXxPikZYZ4y4tq04YpE3hVb8uMBvH0rRBCbxjl
 jTJ21lBL1ZknSzhvP7GLH1sIMaBusE9QCm4dtn52nnG6+y3MGDdMWHf9Tz519FzcfHHh
 di8ALlB9pdxIh287KME98qDm6rDA/xvKWvKNS7D5uMqDAteJpSFY+eOHrSTXRw5NxqwV
 J0fzGuxmSyvyqqT0y9hNh+UOCCi8DQY2X4Z9JeFpIh16MuE1F1ojQM4Mjz1YGYQMb0t7
 Fh9A==
X-Gm-Message-State: APjAAAUzW9UZXC8rLQ/eSextZmjkad2JYxAtg5C9uwVWfYDw43kpV1KQ
 Ta6hfXJiHOfXF7Ao+FGQcdI=
X-Google-Smtp-Source: APXvYqyuo4qk91IioExnITg61c1hmigzSXeRYsBQf8rQa+w2RoTIcUArLEnoRt0HxhsFjPEBZy3DgQ==
X-Received: by 2002:a2e:a0c5:: with SMTP id f5mr1086471ljm.114.1569472041724; 
 Wed, 25 Sep 2019 21:27:21 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id 14sm205875ljs.71.2019.09.25.21.27.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Sep 2019 21:27:20 -0700 (PDT)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>
References: <20190925145138.6185-1-zajec5@gmail.com>
Message-ID: <c1f5a2a5-9e84-0ef7-4503-45d16ab53d0c@gmail.com>
Date: Thu, 26 Sep 2019 06:27:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190925145138.6185-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_212724_262310_5CFD7FBB 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH luci 1/2] luci-mod-system: use "system"
 new "validate_firmware_image" ubus method
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjUuMDkuMjAxOSAxNjo1MSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBUaGlzIG5ldyB1YnVzIG1ldGhvZCBw
cm92aWRlcyBtb3JlIHByb3Blcmx5LWZvcm1hdHRlZCBkZXRhaWxzIGFib3V0Cj4gZmlybXdhcmUg
ZmlsZS4gVXNlIGl0IHRvIGNoZWNrIGlmIHVwbG9hZGVkIGltYWdlIGlzIHZhbGlkLgo+IAo+IFRo
ZSBvbGQgInN5c3VwZ3JhZGUgLS10ZXN0IiBtZXRob2QgaXMgbGVmdCBmb3Igbm93IHRvIHByb3Zp
ZGUgc3RkZXJyCj4gb3V0cHV0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8
cmFmYWxAbWlsZWNraS5wbD4KCk1pc3NlZCBwYXJ0OgoKZGlmZiAtLWdpdCBhL21vZHVsZXMvbHVj
aS1iYXNlL3Jvb3QvdXNyL3NoYXJlL3JwY2QvYWNsLmQvbHVjaS1iYXNlLmpzb24gYi9tb2R1bGVz
L2x1Y2ktYmFzZS9yb290L3Vzci9zaGFyZS9ycGNkL2FjbC5kL2x1Y2ktYmFzZS5qc29uCmluZGV4
IDMxYzE1NGNiYy4uMTgyZjI0OTg4IDEwMDY0NAotLS0gYS9tb2R1bGVzL2x1Y2ktYmFzZS9yb290
L3Vzci9zaGFyZS9ycGNkL2FjbC5kL2x1Y2ktYmFzZS5qc29uCisrKyBiL21vZHVsZXMvbHVjaS1i
YXNlL3Jvb3QvdXNyL3NoYXJlL3JwY2QvYWNsLmQvbHVjaS1iYXNlLmpzb24KQEAgLTQ0LDYgKzQ0
LDcgQEAKICAJCQkJIm5ldHdvcmsuZGV2aWNlIjogWyAic3RhdHVzIiBdLAogIAkJCQkibmV0d29y
ay5pbnRlcmZhY2UiOiBbICJkdW1wIiBdLAogIAkJCQkibmV0d29yayI6IFsgImdldF9wcm90b19o
YW5kbGVycyIgXSwKKwkJCQkic3lzdGVtIjogWyAidmFsaWRhdGVfZmlybXdhcmVfaW1hZ2UiIF0s
CiAgCQkJCSJ1Y2kiOiBbICJjaGFuZ2VzIiwgImdldCIgXQogIAkJCX0sCiAgCQkJInVjaSI6IFsg
IioiIF0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
