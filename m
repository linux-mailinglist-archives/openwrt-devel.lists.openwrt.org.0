Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BD8991BC
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 13:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1KXcAH/KqXcbKNY/Xvv21u+fXd6cTlxRUig4+dxEqU=; b=IV5EOpzBnI+jR0
	HDU+3eRpWPbEQu8ejGnJW16G6YW9K2NlD3gOBD486XENA+AnnyRf0mzKVFxA41WJEn58THj3eGJeH
	YfytarukgHcXDHGrwOSw8XNl+GqLXn2js/dkZCiLycg5b0/+5GpZ24ZM9ExSvCbY95648jZOkYP9+
	Jih6p6YwxnlkWGAyseF2FSNsaaSGYKjvDoqQDR9Z0aqxrGCTakWRHsl8UP0gmYEc68k0WSpvIB224
	XLB32oD2xnix6JUlnarswEOLLqd+4QnHyRnPWifnmQ5Xf7xek1ZgFKICTNyir6CQ+JqPQO5GmxyV1
	o7h1WVNA7KDHHb6ZMj2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kzZ-0004w8-BA; Thu, 22 Aug 2019 11:10:57 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kzJ-0004s7-PD
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 11:10:43 +0000
Received: by mail-lj1-x244.google.com with SMTP id e24so5134060ljg.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 22 Aug 2019 04:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=W8vXyaZaI99BOauq03WT4ykET6X9KTGhBNOPJFQKXZg=;
 b=Eg3WVQVuF+QYnlFtYy9nzndNDagfyUl7pUFl1vVHME3BRLwk6yo/S+263fNnLqVckr
 vg5mx/mVnvDC7HimAEmDpK9SA+3EEwZJYLoku8pI+5v7ClJ5t73EFPgGHs1VBGAP1Plp
 Dbuo3Y1he5jOa8V9ObmxiZoSF+OI1HMrANjOr4YO5bM7O25+MyIDzpdDynd38VKYZS10
 sRogLlz2n6uh19nxmdxLGFDZ1iZ4bdC/3pTGtOZsbifa3maeH5B3/iiY4M3MaP4ehyA2
 HZFYOpqDeD4gwEXRsaE2W6l0sTZxBmClJ7buRqDzTF5wE3sa4fBzMGghmy+FhYqX83Gd
 C2EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=W8vXyaZaI99BOauq03WT4ykET6X9KTGhBNOPJFQKXZg=;
 b=fsHG3T3V6btdAe6jPeAL0fmjkeLui6INj/QPvfCg3jBuHZgggw14n9jDfSMPFWvsB/
 hz5VZmz7NcX+6iV9djt13ffmGWATs3cMdESXWkH7WZUNqLXtdRTz1ZB/EhE9q3uUBhb6
 dYfIAOTjEY7d59NOsQOJ0LHAl1ktj+cFZ4tWqmCYqKb1hNxDAliUS0FD70ivHT+sE1Im
 u0jgWdg8OAqydwGk9efPUO+cDXj/SxI64uxbG+LjvWgVtY0ggxTfRlD9Ce02UyOJRifD
 rTT5a0YoSxEktIXuWsxMI85nM1dxOrv9xQk1Z2hXdHBvExU1sdYekeqHdgnxGJPbFqrf
 2vKA==
X-Gm-Message-State: APjAAAWBxB/K/ihIL5hmaoJGaied/jUpmfliJturQZ9Te8zYBPvHxZpB
 8eafrceai7KDLnvLRPCmkwc=
X-Google-Smtp-Source: APXvYqwbVCR1Q/3zpLWtqHeXb/+qDiiS6MGBhcuhhMJHexmVmHIL4q9w6wjkYDlKPB8ZLXknYwfDvA==
X-Received: by 2002:a2e:9d9a:: with SMTP id c26mr7010575ljj.56.1566472239822; 
 Thu, 22 Aug 2019 04:10:39 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id p28sm3930675lfh.55.2019.08.22.04.10.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 04:10:39 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-8) with ESMTP id x7MBAbUY030672;
 Thu, 22 Aug 2019 14:10:37 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.14.4/Submit) id x7MBAa5h030671;
 Thu, 22 Aug 2019 14:10:36 +0300
Date: Thu, 22 Aug 2019 14:10:36 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <20190822111035.ljetirnglpzaz5oo@home.paul.comp>
References: <20190813165904.1988-1-fercerpav@gmail.com>
 <026101d551fb$78adb9b0$6a092d10$@adrianschmutzler.de>
 <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <CACna6rxqFUqV8zKzdg8HGbYRibRu360L+uj1d8amy2ynqqzKmw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACna6rxqFUqV8zKzdg8HGbYRibRu360L+uj1d8amy2ynqqzKmw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_041041_951029_06ADE42E 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
 Adrian Schmutzler <mail@adrianschmutzler.de>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGV5IFJhZmHFgiEKCk9uIFRodSwgQXVnIDIyLCAyMDE5IGF0IDAxOjAyOjAzUE0gKzAyMDAsIFJh
ZmHFgiBNacWCZWNraSB3cm90ZToKPiBPbiBUdWUsIDEzIEF1ZyAyMDE5IGF0IDIwOjI1LCBQYXVs
IEZlcnRzZXIgPGZlcmNlcnBhdkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gZGlmZiAtLWdpdCBhL3Rh
cmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMV94aWFvbWlfbWlyM2ctdjIuZHRzIGIvdGFyZ2V0
L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX3hpYW9taV9taXIzZy12Mi5kdHMKPiA+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwLi5hMTk2M2QwMDcyCj4gPiAtLS0gL2Rl
di9udWxsCj4gPiArKysgYi90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfeGlhb21pX21p
cjNnLXYyLmR0cwo+ID4gQEAgLTAsMCArMSwxNDYgQEAKPiA+ICsvZHRzLXYxLzsKPiA+ICsKPiA+
ICsjaW5jbHVkZSAibXQ3NjIxLmR0c2kiCj4gCj4gUGxlYXNlIHNwZWNpZnkgLmR0cyBmaWxlIGxp
Y2Vuc2UsIHNlZToKPiBodHRwczovL29wZW53cnQub3JnL3N1Ym1pdHRpbmctcGF0Y2hlcyNkdHNf
Y2hlY2tsaXN0CgpTdXJlLCBub3RlZC4KCkkgc2F3IHRoYXQgcGFnZSBidXQgZ3Vlc3MgSSB3YXMg
Y29uZnVzZWQgYnkgdGhlIGxhY2sgb2YgbGljZW5zZSBpbiBzb21lCm90aGVyIERUUyBmaWxlcyB0
aGVyZS4KCi0tIApCZSBmcmVlLCB1c2UgZnJlZSAoaHR0cDovL3d3dy5nbnUub3JnL3BoaWxvc29w
aHkvZnJlZS1zdy5odG1sKSBzb2Z0d2FyZSEKbWFpbHRvOmZlcmNlcnBhdkBnbWFpbC5jb20KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
