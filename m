Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA98B11E3C6
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 13:44:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kj+YzwSOO5abLFD/u9MZnsGV/vV2D1Q8ia3FMgGCIjs=; b=VUyZarDbIo6sxoElm39gWU4B+
	Sq3Cu0WBOZ4fgOvlEoUyAXToyqeHCcTRQPnu/8k2DwKuHe11dZOv1rxS4u2RHl8H5jUxwkvkokxbP
	HHhBWz6cLB6fol/pxJEU5VoFI5SeUZ0WfzufqY5ZKch88elE7bEMoGInIDql59DkEcIwTxO3ZVE2f
	ZE5Oacpp/BTDK/nRCbKidinadsTaG2ccxC6sLonBbMeoGY9it/2FkUbctjIru/e3jpmhx9dFb+DO9
	mBbO98jgXOlDh960BXrNvTP2U+kTuS2xCOhHh5di+M5RhhF9v5D1/GfqBOLUukXrEJY7IEgD+vOZx
	19fbW312w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifkJI-0005UP-W5; Fri, 13 Dec 2019 12:44:45 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifkJB-0005Tw-AD
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 12:44:38 +0000
Received: by mail-lj1-x243.google.com with SMTP id k8so2494529ljh.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Dec 2019 04:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Zuw6tt6LSCI7nrfmkCJNUAAV/SSfJuEJU4CqIKuiW8A=;
 b=OqBJpCJGSVlSYTsKebCGfRIXphqpUH1gsYBpwCZn9BVBKiWFeh/VF1SZPN3pt/prad
 6VdY4CaBNAfEY+/+AiloXmbVKbAMnzNxCj7dzP+Mh5eAuUd4LVujcOX1U5dyTnFB0GvP
 2xMArVDR5a5dHf7VG6Md95BerltZw+mRtqTIN1/QkKK11TIpkx8wEEsBHKTdfPl8lhg7
 6fUnpQy3DtV7PKW1591mn+ze2U9yX9QOwdFttsi5IYfd3lo+Ts6RoUQgOCmFBfgS12D8
 fka2JKJm+4Zrdkavzx3j9GmD6lvfx0/mMlFJGw65NvQZ6i+pHH5Iurb9vkQ8eHzVzrrL
 vEdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Zuw6tt6LSCI7nrfmkCJNUAAV/SSfJuEJU4CqIKuiW8A=;
 b=hBo1CGyfx89D9vfZEZS4K3RcQDZmOnAnLfZ5Bo93YGxGMl610kuG3j9L6r+/IjRT4T
 k7tfWe9LYaXGdroj9tBcHnp3S4GDligQ5HQVYycwTve9ZbUZiO/PNhxSlZwiCgJCz7YN
 TA/Te20RM7Y1WM0vkyILi8O/MwTtX7ZjpDaNEtN8KpME5WIygwZDWpyqxpTXKhJ0sAN1
 1TMJeGFR2stm0u+NQVrv+tsXC7+6T9ITyuqQ4xKzIRabjUxRf8bWaT6adYzfkOa5eR/u
 xCLKh3/nRU6CR7A+CkKFd/ahZhs1Clc1KIV+60ibkD65tFT4sOUDl4TLev8ecP5NEb5D
 Vc/w==
X-Gm-Message-State: APjAAAXyv40lfknsdss8Q+Ho8vsUfrW/LLQAtZHdUhoLi1hsUmUtA7nV
 TKkJc69athHwV7b9sD08GE8=
X-Google-Smtp-Source: APXvYqy3AIo6vyp5jjFxjWSCNZFxEImqcqhvvOeOUrcjfLU89DiI1zINh0tICNaq2uvnf8d4c5HaHw==
X-Received: by 2002:a2e:7816:: with SMTP id t22mr9594227ljc.161.1576241073768; 
 Fri, 13 Dec 2019 04:44:33 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id t27sm4845013ljd.26.2019.12.13.04.44.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Dec 2019 04:44:32 -0800 (PST)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
References: <94e6f04d-19c5-3818-0748-db4ec0d481ad@gmail.com>
Message-ID: <88022db3-abe4-de12-118c-e9b74d8a331b@gmail.com>
Date: Fri, 13 Dec 2019 13:44:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <94e6f04d-19c5-3818-0748-db4ec0d481ad@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_044437_379617_BF72CD7E 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] libblkid-tiny: bugged buffer management
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

T24gMjYuMDguMjAxOSAxNzozMywgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEkgbm90aWNlZCBh
IGJ1ZyBpbiAiYmxvY2siIHRvb2wgYmVoYXZpb3IuIEl0IHdhcyBwcm92aWRpbmcgaW5jb25zaXN0
ZW50Cj4gVVVJRHMgZm9yIG15IGRpc2tzIHdpdGggTlRGUyBwYXJ0aXRpb25zLgo+IAo+ICguLi4p
Cj4gCj4gVGhhdCBidWcgd2FzIGV4cG9zZWQgYnkgY2FjaGVfbG9hZCgwKSB2cy4gY2FjaGVfbG9h
ZCgxKS4gVGhvc2UgY2FsbHMKPiByZXN1bHQgaW4gZGlmZmVyZW50IG9yZGVyIG9mIGJ1ZmZlciBh
bGxvY2F0aW9uIGluIHRoZQo+IGJsa2lkX3Byb2JlX2dldF9idWZmZXIoKS4KPiAKPiBUaGlzIHBy
b2JsZW0gaXMgY2F1c2VkIGJ5Ogo+IDEpIGJsa2lkX3Byb2JlX2dldF9idWZmZXIoKSByZXN1aW5n
IGJ1ZmZlciB3aGVuIHBvc3NpYmxlCj4gMikgX19wcm9iZV9udGZzKCkgcmVhZGluZyBtdWx0aXBs
ZSBibG9ja3MKPiAKPiBBcyB5b3UgY2FuIHByb2JhYmx5IGd1ZXNzIGFueSBzdWJzZXF1ZW50IGJs
b2NrIHJlYWR5IGNhbiBvdmVyd3JpdGUgYQo+IGNvbnRlbnQgb2YgcHJldmlvdXNseSByZXR1cm5l
ZCBibG9jayBjb250ZW50IGJ1ZmZlci4gSW4gX19wcm9iZV9udGZzKCkKPiBjYXNlIGl0J3Mgc29t
ZXRoaW5nIGxpa2U6Cj4gCj4gbnMgPSBibGtpZF9wcm9iZV9nZXRfc2IoLi4uKTsKPiBidWZfbWZ0
ID0gYmxraWRfcHJvYmVfZ2V0X2J1ZmZlciguLi4pOwo+IGJ1Zl9tZnQgPSBibGtpZF9wcm9iZV9n
ZXRfYnVmZmVyKC4uLik7Cj4gbnMtPnZvbHVtZV9zZXJpYWwKPiAKPiBJZiB5b3UgdGFrZSBhIGxv
b2sgYXQgYmxraWRfcHJvYmVfZ2V0X2J1ZmZlcigpIGluIHRoZSBvcmlnaW5hbCBwcm9qZWN0Cj4g
KHV0aWwtbGludXgncyBsaWJibGtpZCkgaXQncyBhIGJpdCBtb3JlIGNvbXBsaWNhdGVkOgo+IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS91dGlscy91dGlsLWxpbnV4L3V0aWwtbGludXgu
Z2l0L3RyZWUvbGliYmxraWQvc3JjL3Byb2JlLmMjbjY0MAoKQW5vdGhlciB1c2VyIG5vdGljZWQg
dGhlIHNhbWUgYnVnIGFuZCBwb3N0ZWQgYSB3b3JrYXJvdW5kOgpbUEFUQ0hdIGZzdG9vbHM6IGZp
eCBsaWJibGtpZC10aW55IG50ZnMgdXVpZCBkZXRlY3Rpb24KaHR0cHM6Ly9wYXRjaHdvcmsub3ps
YWJzLm9yZy9wYXRjaC8xMTU3MDk3LwoKQW5vdGhlciBleGFtcGxlIGlzIHZmYXQgd2hpY2ggY2Fu
bm90IGRldGVjdCBvbmUgb2YgbXkgcGFydGl0aW9ucy4gSXQncwpjYXNlZCBieSBwcm9iZV92ZmF0
KCk6CjEuIFJlYWRpbmcgdmZhdCBzdXBlcmJsb2NrOgp2cyA9IGJsa2lkX3Byb2JlX2dldF9zYihw
ciwgbWFnLCBzdHJ1Y3QgdmZhdF9zdXBlcl9ibG9jayk7CjIuIFJlYWRpbmcgd2hpbGUgdHJ5aW5n
IHRvIGdldCBGQVQgZW50cnk6CmJ1ZiA9IGJsa2lkX3Byb2JlX2dldF9idWZmZXIocHIsIGZhdF9l
bnRyeV9vZmYsIGJ1Zl9zaXplKTsKMy4gVHJ5aW5nIHRvIGFjY2VzcyB2cyBkYXRhIG9uY2UgaXQg
d2FzIGNvcnJ1cHRlZDoKZnNpbmZvX3NlY3QgPSBsZTE2X3RvX2NwdSh2cy0+dnNfZnNpbmZvX3Nl
Y3Rvcik7CgpUaGlzIGJ1ZyByZWFsbHkgcmVxdWlyZXMgYSBwcm9wZXIgZml4LgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
