Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C9312B48C
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 13:26:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJ9PY7ddoE27SRX1bxwKqwc+f4Q42rmIGLxu/lwZPEE=; b=tO/gYAWP7CFOyq
	8vG1NQ+wAlRIsa7mpOZO7pM5DId3CEnVEwmrnNBS5wt8+ZS+Md2MJbnAIH33CAzEeYwr9J4t2A3TX
	oR8WRce28r/tqKy5F18ZbNET4GpoSuj40o574wWqSLZ9y0HtlKekKzFzGNg7uJgzRE3vkinBrxkKD
	fuvkYjuH2PHmS/vDkWSGfNnUiJv53iqbT8wMuyKix5K4HS7t3n79NR9ijvD8TOO+nlrwQZiwOVhaQ
	nCD8Iph3oVij3wyBJPjGCNw9t04z1Oq3JP81xU054EcTSJEd6Pm56+ulL7DNglUgQI+ueY9JyelcH
	xJXa+jAagFJ7Mn/2NGSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikoh9-0005iv-DZ; Fri, 27 Dec 2019 12:26:19 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikoh0-0005fQ-B7
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 12:26:11 +0000
Received: by mail-lj1-x244.google.com with SMTP id a13so26987574ljm.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Dec 2019 04:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/vSjG2Jf7UC+SmAK2i75Rr13JZFSHX/KXazEnANIHPg=;
 b=U1eWc22bF6Egudb+EYNfoubSkRUUjuFxNmtLeaKS2jbW+Lexvbv/fQ3HAz2lQ0JQh2
 J7NvLD4lOR1KcBif4o1vW8EYls6JSZbdQXoYOL70Ir8um3ZY5QutFmTpbHgrqKPbNUfU
 OiIVsqdutM6X1FX2/c5nZ5Tc1GPoBlkOPnBpw+8BvdHx1u5JLofF9I7DejVMUZieJzOC
 gEwBj7mU0sMPOBe+2GucZDQ/RFpFL/iudCdVJDCvs4sW+vkjCjWNGBtA1iT5UOTNsO+K
 2lIfemLWa1DcBEMQPQdhGZtSqnrJjv6eB0WIptLLoyjFfvioU2g3LqL8KqXb0aDfZU9U
 b4CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/vSjG2Jf7UC+SmAK2i75Rr13JZFSHX/KXazEnANIHPg=;
 b=ZM7mL/J2+NLnFb/+pVSPdEykFaV8AHXuTgl6wTjBKOKRM3IUVN5eGkpQQiBum1HpaC
 QlNtfbgpyHWmOP+8BPP5avPRtngvCIKcxR5jEDabvDw8qUzrznF03l6tIqL6inwH3IGM
 gZUm78BwqdybQfbLUmcQ4VAf1N7VqXfUh5Ue8gauBBwK3KYgNPpblJ5aasyA3d2rWlFz
 JG6JQghm39YNz7duHJ1wqAHrnUTOLARDsk5cfY3WQJCbDT7aiX8/2aRm/CaR9niOf9FV
 hyEJi7ikeDwXlE5ZPvMOcbweZMmy5pAZRyB7GZHjMJqQbMDpY67T8TEIEjLMExe0vftY
 1e7g==
X-Gm-Message-State: APjAAAVEkLbdkfUhdzlqXU76rBPlmDqxQss/rCCDNH8moRtD0gUU8GwG
 W49oQa9EvzMd+FiwV57s0sachZShYfiP3m2qZ3Q=
X-Google-Smtp-Source: APXvYqx9nBsOX0vAvGkDkRotu+lKwdc9M+OSkF48pJm8uBWEXY/yDSabbx+j7SQjJ4KYH6ea7XsbLe4GPn/LZx2neag=
X-Received: by 2002:a2e:b5ac:: with SMTP id f12mr29443804ljn.0.1577449568120; 
 Fri, 27 Dec 2019 04:26:08 -0800 (PST)
MIME-Version: 1.0
References: <20191227085335.10144-1-zajec5@gmail.com>
In-Reply-To: <20191227085335.10144-1-zajec5@gmail.com>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Fri, 27 Dec 2019 20:25:54 +0800
Message-ID: <CAECwjAjw7dkkgqSd47N55XC1JwLNWUMTQQHSJdJ5y4fEhnoYDw@mail.gmail.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_042610_388168_D2B21C42 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH fstools] Revert "block: mount_action:
 handle mount/umount deps"
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCAyNyBEZWMgMjAxOSBhdCAxNjo1MywgUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21h
aWwuY29tPiB3cm90ZToKPgo+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5w
bD4KPgo+IFRoaXMgcmV2ZXJ0cyBjb21taXQgMzJjMzEyNmIyZjA0NjQxMDZkNzQzMTczMzZiNmFl
ZjFkN2Q1ZjgyZi4KPgo+IEludGVybmFsIGxpc3Qgb2YgZGV2aWNlcyBndWFyYW50ZWVzIHNvbWUg
YmFzaWMgc29ydGluZyAoYnkgZGV2aWNlIHR5cGUKPiBhbmQgdGhlbiBhIG5hbWUpIGJ1dCBub3Ro
aW5nIG1vcmUuIEluIHBhcnRpY3VsYXIgaXQncyBub3QgZ3VhcmFudGVlZAo+IChhbmQgaXQncyBh
Y3R1YWxseSBxdWl0ZSB1bmNvbW1vbikgdGhhdCBhbGwgcHJlY2VkaW5nIGVudHJpZXMgYXJlIHBh
cmVudAo+IGRldmljZXMuCj4KPiBNb3VudGluZyBhbGwgcHJlY2VkaW5nIGRldmljZXMgbWF5IGVh
c2lseSByZXN1bHQgaW4gdW5yZWxhdGVkIG1vdW50cy4KPiBUaGV5IGNhbiBmYWlsIGVhc2lseSBi
YXNpY2FsbHkgYnJlYWtpbmcgb3JpZ2luYWwgbW91bnRpbmcgYXR0ZW1wdCwgZS5nLjoKPgo+IGRh
ZW1vbi5lcnIgYmxvY2tkOiBrZXJuZWwgaXMgcmVxdWVzdGluZyBhIG1vdW50IC0+IHNkYTIKPiBk
YWVtb24uZXJyIGJsb2NrOiAvZGV2L3NkYTEgaXMgYWxyZWFkeSBtb3VudGVkIG9uIC90bXAvcnVu
L2Jsb2NrZC9zZGExCj4gZGFlbW9uLmVyciBibG9jazogYXV0b2ZzOiAiYWRkIiBhY3Rpb24gaGFz
IGZhaWxlZDogLTEKPiBkYWVtb24uZXJyIGJsb2NrZDogZmFpbGVkIHRvIHJ1biBibG9jay4gYWRk
L3NkYTIKClNvcnJ5IGZvciB0aGUgaW5jb252ZW5pZW5jZS4gIEJ1dCB0aGUgZXJyb3IgKHJlZ3Jl
c3Npb24pIHNob3VsZCBiZQpjYXVzZWQgYnkgMmYyYTA5YWQgKCJibG9jazogbW91bnRfZGV2aWNl
OiBlcnIgbG9nIG9ubHkgd2hlbiBtcApkZXZpYXRlcyBmcm9tIHNwZWMiKS4gIG0tPnRhcmdldCBp
cyBleHBlY3RlZCB0byBtYXRjaCB0aGUgYWN0dWFsIG1vdW50CnBvaW50IG9ubHkgd2hlbiBpdCBp
cyBub3QgbWFuYWdlZCBieSBibG9ja2QgKG0tPmF1dG9mcykuCgpQbGVhc2Ugc2VlIGlmIHRoZSBm
b2xsb3dpbmcgcGF0Y2ggd29ya3MuICBXZSBjYW4gYWxzbyBjaGVjayBpZiBtIGlzCm1hbmFnZWQg
YnkgYXV0b2ZzIGFuZCBtLT50YXJnZXQgYSBzeW1saW5rIHdob3NlIHRhcmdldCBtYXRjaGVzIG1w
LCBidXQKdGhhdCdzIGEgYml0IG92ZXJraWxsLgoKLS0tIGEvYmxvY2suYworKysgYi9ibG9jay5j
CkBAIC0xMTAwLDcgKzExMDAsNyBAQCBzdGF0aWMgaW50IG1vdW50X2RldmljZShzdHJ1Y3QgZGV2
aWNlICpkZXYsIGludCB0eXBlKQoKICAgICAgICBtcCA9IGZpbmRfbW91bnRfcG9pbnQocHItPmRl
dik7CiAgICAgICAgaWYgKG1wKSB7Ci0gICAgICAgICAgICAgICBpZiAobSAmJiBtLT50eXBlID09
IFRZUEVfTU9VTlQgJiYgc3RyY21wKG0tPnRhcmdldCwgbXApKSB7CisgICAgICAgICAgICAgICBp
ZiAobSAmJiAhbS0+YXV0b2ZzICYmIG0tPnR5cGUgPT0gVFlQRV9NT1VOVCAmJgpzdHJjbXAobS0+
dGFyZ2V0LCBtcCkpIHsKICAgICAgICAgICAgICAgICAgICAgICAgVUxPR19FUlIoIiVzIGlzIGFs
cmVhZHkgbW91bnRlZCBvbiAlc1xuIiwgcHItPmRldiwgbXApOwogICAgICAgICAgICAgICAgICAg
ICAgICBlcnIgPSAtMTsKICAgICAgICAgICAgICAgIH0gZWxzZQoKCj4KPiBJZiBzb21lIGRlcGVu
ZGVuY3kgaGFuZGxpbmcgaXMgcmVxdWlyZWQgaXQgc2hvdWxkIGJlIGltcGxlbWVudGVkCj4gZXhw
bGljaXRseSBhcyBjdXJyZW50IHNvbHV0aW9uIGlzbid0IHJlbGlhYmxlIGFuZCBpdCBicmVha3Mg
YXV0b2ZzIHdoZW4KPiB1c2luZyBtdWx0aXBsZSBkZXZpY2VzIChwYXJ0aXRpb25zKS4KPgoKRGVw
ZW5kZW5jaWVzIGFyZSBkaXJlY3RseSBpbXBsaWVkIGJ5IG1vdW50IHRhcmdldCBhcyBzcGVjaWZp
ZWQgaW4gdGhlCnVjaSBjb25maWcgZmlsZS4gIFRoaXMgcmVsYXRpb25zaGlwIGlzIGluaGVyZW50
bHkgdGhlcmUuICBFLmcuCgogMS4gbW91bnQgdGFyZ2V0IC9tbnQvYQogMi4gbW91bnQgdGFyZ2V0
IC9tbnQvYS9iCgpUaGVuICIxIiBtdXN0IG1vdW50IGJlZm9yZSAiMiIuICAiMiIgYmVmb3JlICIx
IiBpcyBub3QgcHJhY3RpY2FsbHkKdXNlZnVsIGluIGFueSB3YXkuCgpSZWdhcmRzLAogICAgICAg
ICAgICAgICAgeW91c29uZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
