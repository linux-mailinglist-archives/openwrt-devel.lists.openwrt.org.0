Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61CC9D2D9
	for <lists+openwrt-devel@lfdr.de>; Mon, 26 Aug 2019 17:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LFa8cn3VCocVWzgOb7wZgs1qtrjPqMZZrJgt6ZXEaRU=; b=MwgdD3USckxxJt
	IPed9ZuGH34tB4sh9PAMbXhBT1MMYO2qIj4OpA7J+OS6OeDOP+EOyk2vKj2399i4l2UbIKKu8A09b
	yJPn2ZkaTR3l9Dcnl3HBhNtYCQQLsgGmve6n74F/Sog0xCrxm5bQy2hoSn5gjEF1mrDtn56bJpG8S
	Cc5zAB3FIlkIZDFgrBL6lFR9laHFlHyt1BVBVetCrB8lmLqBGqCSNuM6NF3d39kxn9xPq5TyNxh2F
	2Ml/haRb34eGab5NtV5ThXPXNNWwY2xkoXVFcBq1qnA1Bvssm6ixkcY4hrgC5Uxb6wij7UFj1Qymm
	Tgva1XuCA4cwJoI6LFKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H0H-0000KW-63; Mon, 26 Aug 2019 15:33:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Gzx-0000Jy-La
 for openwrt-devel@lists.openwrt.org; Mon, 26 Aug 2019 15:33:39 +0000
Received: by mail-lj1-x243.google.com with SMTP id t14so15531262lji.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 26 Aug 2019 08:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=CiXvAkHiOebKkf7bgo4anui2YiLYizaoqTzsxNLSVXw=;
 b=JEFqDmeZ2bw4HvNmBi4YAghWIQM6hD4eYKK3cfA1jYhi8lF7Ek+KFOn+MqgZxMB6Tu
 ChWT+AVY1/b1XkDPN1f2ji2UrJW2+gThk7D+6GinPVSppb7XwgfyA3Wn8nAchgvWYrX/
 ccauPTF1Y0oLvD/qKsUeTWWgrd8ykS1ruxnf/Ys2id3/8sGghS1Oa+r3K4X0nV1Nd6ol
 K+8jxGA5+G4jCWEfE5W2co9ZljR0Ur4cRYrUTJwYMEEtz+Ckc2keksx7trYC5Z7QfW/W
 X2YRalkXtJYzKr/mgg413R+3ca4KC7TKMHpfwgXUE3NxaOgpyQVTCppZfhHbswAYvwLT
 qySw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=CiXvAkHiOebKkf7bgo4anui2YiLYizaoqTzsxNLSVXw=;
 b=sIM/JIK7wvymspO3powvWBkgDCGmrAVAvPtB2karWWTGb9rx2UaBfGEIU31cCJla6U
 R22niZ64QmHwH2CkikO2eZuckIpQEyAqtRocpFfvBV1Rpb+yZ6WyzOb3bkQnESNCD0Vn
 VvkWqeo8BNQ9tflWTuCQT/VqbKlNukMlEyOuY4Vvv8GxWotDOMDW4nwHlnRhphCYqS9m
 FRyMLUVZw2vi06/HgzZRPhlGTFw81kBDzLk0GTzGFRZ5E60yrfzyC+Sy6EP5u/KQNA3R
 CrO+gvcaey77PVfTVbJlfkXUokSgGOmkHQ2vojmqhH8S3ML93Mpm3wgntqEOS1vWZ55g
 ogzQ==
X-Gm-Message-State: APjAAAWtWWHgSC3Bqh40Ew5oJRzf/VoiC/W+iQ9YhZnF/ie9dq7Nx6nm
 bj9yPxFk182GoJnDlCRj4xY=
X-Google-Smtp-Source: APXvYqzu76yIB8wKaXgK0wabYmfAtI1uIgUH5zwFgcgtRVmzXLfLTrkHXpSHU6syj5TcgvvFNm+YGw==
X-Received: by 2002:a2e:8658:: with SMTP id i24mr10858972ljj.188.1566833615809; 
 Mon, 26 Aug 2019 08:33:35 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id x15sm933675lff.54.2019.08.26.08.33.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Aug 2019 08:33:35 -0700 (PDT)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <94e6f04d-19c5-3818-0748-db4ec0d481ad@gmail.com>
Date: Mon, 26 Aug 2019 17:33:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083337_751598_4878FEE1 
X-CRM114-Status: GOOD (  10.53  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: [OpenWrt-Devel] libblkid-tiny: bugged buffer management
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

SSBub3RpY2VkIGEgYnVnIGluICJibG9jayIgdG9vbCBiZWhhdmlvci4gSXQgd2FzIHByb3ZpZGlu
ZyBpbmNvbnNpc3RlbnQKVVVJRHMgZm9yIG15IGRpc2tzIHdpdGggTlRGUyBwYXJ0aXRpb25zLgoK
UGxlYXNlIGNoZWNrIFVVSUQgb2YgL2Rldi9zZGExIGluIGZvbGxvd2luZyBleGFtcGxlczoKCnJv
b3RAT3BlbldydDovIyBibG9jayBpbmZvCi9kZXYvbXRkYmxvY2s0OiBVVUlEPSI4NDYzYTQwMy05
OWIzY2Y5Mi1kMmI3OTk2Zi1jNGVkZTRmNCIgVkVSU0lPTj0iNC4wIiBNT1VOVD0iL3JvbSIgVFlQ
RT0ic3F1YXNoZnMiCi9kZXYvbXRkYmxvY2s1OiBNT1VOVD0iL292ZXJsYXkiIFRZUEU9ImpmZnMy
IgovZGV2L3NkYTE6IFVVSUQ9IjZBQTk4NzM2MzZDQTU0MDkiIFRZUEU9Im50ZnMiCi9kZXYvc2Rh
MjogVVVJRD0iMDAwMDAwMTgwMDAwMDAzMCIgVFlQRT0ibnRmcyIKL2Rldi9zZGIxOiBVVUlEPSIw
MDAwMDAxODAwMDAwMDMwIiBUWVBFPSJudGZzIgoKcm9vdEBPcGVuV3J0Oi8jIGJsb2NrIGRldGVj
dApjb25maWcgJ2dsb2JhbCcKICAgICAgICBvcHRpb24gIGFub25fc3dhcCAgICAgICAnMCcKICAg
ICAgICBvcHRpb24gIGFub25fbW91bnQgICAgICAnMCcKICAgICAgICBvcHRpb24gIGF1dG9fc3dh
cCAgICAgICAnMScKICAgICAgICBvcHRpb24gIGF1dG9fbW91bnQgICAgICAnMScKICAgICAgICBv
cHRpb24gIGRlbGF5X3Jvb3QgICAgICAnNScKICAgICAgICBvcHRpb24gIGNoZWNrX2ZzICAgICAg
ICAnMCcKCmNvbmZpZyAnbW91bnQnCiAgICAgICAgb3B0aW9uICB0YXJnZXQgICcvbW50L3NkYTEn
CiAgICAgICAgb3B0aW9uICB1dWlkICAgICcwMDAwMDAxODAwMDAwMDMwJwogICAgICAgIG9wdGlv
biAgZW5hYmxlZCAnMCcKCmNvbmZpZyAnbW91bnQnCiAgICAgICAgb3B0aW9uICB0YXJnZXQgICcv
bW50L3NkYTInCiAgICAgICAgb3B0aW9uICB1dWlkICAgICcwMDAwMDAxODAwMDAwMDMwJwogICAg
ICAgIG9wdGlvbiAgZW5hYmxlZCAnMCcKCmNvbmZpZyAnbW91bnQnCiAgICAgICAgb3B0aW9uICB0
YXJnZXQgICcvbW50L3NkYjEnCiAgICAgICAgb3B0aW9uICB1dWlkICAgICcwMDAwMDAxODAwMDAw
MDMwJwogICAgICAgIG9wdGlvbiAgZW5hYmxlZCAnMCcKClRoYXQgYnVnIHdhcyBleHBvc2VkIGJ5
IGNhY2hlX2xvYWQoMCkgdnMuIGNhY2hlX2xvYWQoMSkuIFRob3NlIGNhbGxzCnJlc3VsdCBpbiBk
aWZmZXJlbnQgb3JkZXIgb2YgYnVmZmVyIGFsbG9jYXRpb24gaW4gdGhlCmJsa2lkX3Byb2JlX2dl
dF9idWZmZXIoKS4KClRoaXMgcHJvYmxlbSBpcyBjYXVzZWQgYnk6CjEpIGJsa2lkX3Byb2JlX2dl
dF9idWZmZXIoKSByZXN1aW5nIGJ1ZmZlciB3aGVuIHBvc3NpYmxlCjIpIF9fcHJvYmVfbnRmcygp
IHJlYWRpbmcgbXVsdGlwbGUgYmxvY2tzCgpBcyB5b3UgY2FuIHByb2JhYmx5IGd1ZXNzIGFueSBz
dWJzZXF1ZW50IGJsb2NrIHJlYWR5IGNhbiBvdmVyd3JpdGUgYQpjb250ZW50IG9mIHByZXZpb3Vz
bHkgcmV0dXJuZWQgYmxvY2sgY29udGVudCBidWZmZXIuIEluIF9fcHJvYmVfbnRmcygpCmNhc2Ug
aXQncyBzb21ldGhpbmcgbGlrZToKCm5zID0gYmxraWRfcHJvYmVfZ2V0X3NiKC4uLik7CmJ1Zl9t
ZnQgPSBibGtpZF9wcm9iZV9nZXRfYnVmZmVyKC4uLik7CmJ1Zl9tZnQgPSBibGtpZF9wcm9iZV9n
ZXRfYnVmZmVyKC4uLik7Cm5zLT52b2x1bWVfc2VyaWFsCgpJZiB5b3UgdGFrZSBhIGxvb2sgYXQg
YmxraWRfcHJvYmVfZ2V0X2J1ZmZlcigpIGluIHRoZSBvcmlnaW5hbCBwcm9qZWN0Cih1dGlsLWxp
bnV4J3MgbGliYmxraWQpIGl0J3MgYSBiaXQgbW9yZSBjb21wbGljYXRlZDoKaHR0cHM6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL3V0aWxzL3V0aWwtbGludXgvdXRpbC1saW51eC5naXQvdHJlZS9s
aWJibGtpZC9zcmMvcHJvYmUuYyNuNjQwCgpBbnkgaWRlYS9oaW50IGhvdyB0byByZXNvbHZlIGl0
IGluIHNvbWUgc2ltcGxlIHdheT8KCi0tIApSYWZhxYIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
