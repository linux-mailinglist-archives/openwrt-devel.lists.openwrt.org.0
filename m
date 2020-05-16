Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07311D5FC7
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 10:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jew+wMuqzqgQDFcQPrQyQpf4utzCso7uu+L3MR84veQ=; b=RMuuFc5iURUUu+
	/hL4bXhzwZHM6JG/bGJZQp6z2K/X2/WLaNiCH0jHH01MYNnmkmyiQcRnx0gJ/7kREOmi47tj1g2do
	dr7/0mFxEfkJJd9D9YziRL1ggR+EzMdFxfsLu6I6ZbrmYjBWsNVTef9Cn+/6HX9K5Z2A+Wn7pSFFc
	w/lgiKpfyzeTzSyTTG/qZVCLuMR7KjnzIBVMf9rFE8D9x0iiFluB1RgvdZorgFqm+rrP8tOEIXeuX
	+QIN4YerIKx3O8XbKiQTxhFWa0XL0+ZbJFI2+pQZXstWD31aNL50pZ9nvkKBVL5S4oFTZoRrJt8a/
	J3soGbCEEVl8HHkHC0EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZsTr-00027S-Aa; Sat, 16 May 2020 08:47:39 +0000
Received: from meesny.iki.fi ([195.140.195.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZsTX-0001xr-69
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 08:47:21 +0000
Received: from [IPv6:2001:14ba:8091:2700:88ac:34e2:bcdc:c2c6]
 (dtckwryfk1t6rgsh84ndy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:8091:2700:88ac:34e2:bcdc:c2c6])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: hannu.nyman)
 by meesny.iki.fi (Postfix) with ESMTPSA id 5C441202E4
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 May 2020 11:46:54 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589618814;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=CdMcm3YaodmafJSWYdQz2wdRYnxIZaS9HsyIrd/9+KM=;
 b=jfnuJdHIuf2/YwFGv4+GIOpVR8dFwTxD2Ubwb5AOAoNDN0uDIcmSyeWegbXcggIJIk2Gz3
 ueU0Uh9LAnWP0hmCMIkYIyD1BUIKXCmI7rI8kNg1/T8KyyD9u09J6zY1YOVEZzatxkzBHv
 TpVhf9+Bn/YpTcOioce6nseWkJmeweI=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <a41b5533-ab3a-d360-1fb2-53392a19158e@iki.fi>
Date: Sat, 16 May 2020 11:46:55 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101
 Thunderbird/77.0
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589618814;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=CdMcm3YaodmafJSWYdQz2wdRYnxIZaS9HsyIrd/9+KM=;
 b=L75AafNHv6msAwFLLJB2d34e+x1bXqQay//X+gfaTZ1FB3NN+uLYNHfiO96zPbC0ovaUiA
 5Yi1TeIsEpjr97/CMHtqEYYP/CPg55dpfG4QwaggI5Qkhl1WYjU8Tv6iqCPrWDRNDSLQAa
 9o/hmL57P7yiMhPzD96Ar5sLXamDerk=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589618814; a=rsa-sha256; cv=none;
 b=OWbKjaVBo1YYHMmrrPn6r3ipVLtaufH+Vpr4mOC2j39OHjqn8R/75Xx4ihtnq9TjyNfX5f
 ymq6M5797FFLwu0dZY+0AO7UJ/fYmjAqVqiWYjMuUXMfVlQtEWV8jzC2D+nm2DvldRuDQe
 sNDkWdZasELKBcHkJd4T3blI8tIv6UQ=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=hannu.nyman smtp.mailfrom=hannu.nyman@iki.fi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_014719_601422_7738258E 
X-CRM114-Status: UNSURE (   5.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Is 18.06 packages buildbot intentionally offline?
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

QXBwYXJlbnRseSB0aGUgb3BlbndydC0xOC4wNiBwYWNrYWdlcyBidWlsZGJvdCBoYXMgYmVlbiBv
ZmZsaW5lIHRocmVlIHdlZWtzLCAKc2luY2UgMjIgQXByaWwgMjAyMDoKCmh0dHA6Ly9idWlsZGJv
dC5vcGVud3J0Lm9yZy9vcGVud3J0LTE4LjA2L3BhY2thZ2VzL29uZV9saW5lX3Blcl9idWlsZAoK
SXMgdGhhdCBpbnRlbnRpb25hbD8KClRoZXJlIGhhcyBiZWVuIHNvbWUgdGFsayBhYm91dCAxOC4w
Ni4zwqAgCihodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvb3BlbndydC1kZXZl
bC8yMDIwLU1heS8wMjMyMjYuaHRtbCApLCAKc28gaXQgc2VlbXMgc3RyYW5nZSB0aGF0IHRoZSBw
YWNrYWdlcyBidWlsZGJ0IHdvdWxkIGJlIGludGVudGlvbmFsbHkgb2ZmbGluZSAKZm9yIHNldmVy
YWwgd2Vla3MuCgpMb29rcyBsaWtlIHRoZSB0d28gYnVpbGRzbGF2ZXMgZnJvbSB0cnVlY3ogd2Vy
ZSBzd2l0Y2hlZCBvZmYgYXQgV2VkIEFwciAyMiAKMTE6NTc6MzIgMjAyMCBhbmQgcmVtb3ZlZCBm
cm9tIHRoZSBidWlsZGJvdCBjb25maWcsIGFuZCB0aGUgdGhpcmQgZGVmaW5lZCAKYnVpbGRzbGF2
ZSBmcm9tIG5vbW9zcGhlcmUgaGFzIG5ldmVyKD8pIGRvbmUgYSBidWlsZC4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
