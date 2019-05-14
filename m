Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9EA1C94D
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 15:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:To:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+qLcDwbnUkR8YAYtZTlu0W9Bqfud4iQxcfHtseufaE0=; b=ZF5kFX4CojCcWqS2x2kMSnDkgN
	SAUHlAWpIFr4q6+ZXqrWjiYAsAAhbsxEKhh1XkQnYuekq2Clbruxuy3mN/RYoq0CNf58cvnMnFQ/8
	4YpxRNZHO/APq2X0SPlMjAHfRERklPlo+ywKkvM+Bk17Q68/xoe5iRammdf2rCQlHp7XnuxqN8AZV
	SBILRLddGWqzIQ/q1CNiffXkkc5UakO9dqAgoR15PGfm2/mqw1VENmVORs1EdS4Q4iTUgGEEfp2Rt
	0FdeEP0M0LyCGCfSZK3g+oDS+IffiCc6rF0d/IksfNTd99M3nhpQvRJ0BFd8xm7fSnca0+u1xrWO7
	tcg/kvSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXLz-0003Ff-VS; Tue, 14 May 2019 13:20:23 +0000
Received: from mail-it1-x133.google.com ([2607:f8b0:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXLu-0003FJ-GD
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 13:20:19 +0000
Received: by mail-it1-x133.google.com with SMTP id q65so4887442itg.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 06:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=8devices-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=0KdlV0tCtC39NHW6m8hjJFJRgsyX8ANT0679yEqf4PU=;
 b=Z3DvALcplBz4gxHJTmph6syLbA9hYBG/1TEKBJlAUVSzojEAeCYwYth3XAU0YGLgCX
 oaij/zXwufRnBoy5+4TBggdOcrOOFARIyx0IGuqhNIvw6tBAwkB/tF7Z1KbLfTC1bP+/
 Xck/gYawyA9ONy2aYhgxOFeAxjp5i5bXoVPQnjArL8YK+wveATgf368Ma12gKVPY32ON
 uvoxrwTZ5uf3Dm+3Ly8zpnxkjhv5edhdOWwTskt/UgidAqTYrYUgnDA2BVWanRqvJ2bL
 bRn7ePqHCzDUIWR1Iw/qBmLWtPyz5OcqWG4JT650y9ckjEDz9MaTWkhuPE6fF10888Cj
 HJRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0KdlV0tCtC39NHW6m8hjJFJRgsyX8ANT0679yEqf4PU=;
 b=oTCFKx2T4sYTjt1RNV1tZuQXTSSBo671oesmpU9+8dl1UtWMPytJvYppke0D3Ego0z
 K3ex9D+5Loov4RZaXF82V7pLFDT6mwT0NEzwtzFdqGfOY3Suj6lVJeejKDSYdJXJPHuo
 ujw7ZvxGpnvA5wtn9zDFkjgcW0cyvigmfsI3hSvBepMmFcTScBf14lg1HYinY5FXQCgZ
 8fvRYxmb925nvgIBZDsWaCbJUhHJOeuZJMVe3quesX6qUFCUewVffim5WEm8jw/SPI9F
 +3d0sogSj2K2YNYoSV2MoZnKS17u4PU40fyMgbi9zMqSOg5SO3Z2yJCQIxLQsqvxFJaW
 SDWw==
X-Gm-Message-State: APjAAAXygnjRUWei8E6LtZ9oYz8TeFK0U//85REbRWhT9XybaWej4p69
 de5rQHQ/8k+AWHdtmfo4ja6vxMka0YPIMiSX5LIQRzln
X-Google-Smtp-Source: APXvYqzOLxRtSycfjJP6i8v1VmZ3ctDdlog2WDYE7v+ygAwzQWlPch2v9I5i8hFuKqxSY8f/zGLXjv1FRqrNcUi779A=
X-Received: by 2002:a02:90c6:: with SMTP id c6mr15109882jag.117.1557840016538; 
 Tue, 14 May 2019 06:20:16 -0700 (PDT)
MIME-Version: 1.0
From: Tautvydas Belgeras <tautvydas.b@8devices.com>
Date: Tue, 14 May 2019 16:20:05 +0300
Message-ID: <CABwg9-nEmz5Y8N89EU6V4TX0G0SNOYU+TqTCU7KiSr17crqjfQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="000000000000cdf3660588d8e45e"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_062018_589417_8EB5FB00 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Patch to uqmi utility
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--000000000000cdf3660588d8e45e
Content-Type: multipart/alternative; boundary="000000000000cdf3630588d8e45c"

--000000000000cdf3630588d8e45c
Content-Type: text/plain; charset="UTF-8"

Patch fixes utility returning "Unknown error" when generating a request
after a wait of a few minutes

--000000000000cdf3630588d8e45c
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Patch fixes utility returning &quot;Unknown error&quot; when generating a request after a wait of a few minutes<br></div>

--000000000000cdf3630588d8e45c--

--000000000000cdf3660588d8e45e
Content-Type: text/x-patch; charset="US-ASCII"; name="uqmi_unknown_error_fix.patch"
Content-Disposition: attachment; filename="uqmi_unknown_error_fix.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jvntoiwc0>
X-Attachment-Id: f_jvntoiwc0

RnJvbTogVGF1dHZ5ZGFzIEJlbGdlcmFzIDx0YXV0dnlkYXMuYkA4ZGV2aWNlcy5jb20+CgpGaXgg
dXRpbGl0eSByZXR1cm5pbmcgc3RhdHVzICJVbmtub3duIGVycm9yIiB3aGVuIHRyaWdnZXJpbmcg
cW1pIHJhZGlvCmFmdGVyIGEgd2FpdCBvZiBhIGZldyBtaW51dGVzCgpBZnRlciBnZW5lcmF0aW5n
IGEgcW1pIHJlcXVlc3QsIHRoZSB1dGlsaXR5IGV4cGVjdHMgYSByZXNwb25zZSB0eXBlIG1lc3Nh
Z2UuCkluIHNvbWUgY2FzZXMgdGhlIHFtaSByYWRpbyBzZW5kcyBhIHJlc3BvbnNlIGFuZCBhbiBp
bmRpY2F0aW9uIHR5cGUgbWVzc2FnZS4KVGhpcyBmaXggYWRkcyBhIGNoZWNrIGZvciBpbmNvbWlu
ZyBtZXNzYWdlIHR5cGUgYW5kIGRyb3BzIGl0IGlmIGl0J3Mgbm90CmEgcmVzcG9uc2UgdHlwZSwg
YmVjYXVzZSB0aGF0J3Mgd2hhdCBsYXR0ZXIgcGFydHMgb2YgdGhlIGNvZGUgZXhwZWN0LgoKU2ln
bmVkLW9mZi1ieTogVGF1dHZ5ZGFzIEJlbGdlcmFzIDx0YXV0dnlkYXMuYkA4ZGV2aWNlcy5jb20+
Ci0tLQpkaWZmIC0tZ2l0IGEvZGV2LmMgYi9kZXYuYwppbmRleCBjMjU5MDBiLi5iMGM4MjYyIDEw
MDY0NAotLS0gYS9kZXYuYworKysgYi9kZXYuYwpAQCAtMTAxLDYgKzEwMSwxNCBAQCBzdGF0aWMg
dm9pZCBxbWlfcHJvY2Vzc19tc2coc3RydWN0IHFtaV9kZXYgKnFtaSwgc3RydWN0IHFtaV9tc2cg
Km1zZykKIAl1aW50MTZfdCB0aWQ7CiAKIAlpZiAobXNnLT5xbXV4LnNlcnZpY2UgPT0gUU1JX1NF
UlZJQ0VfQ1RMKQorCXsKKwkJaWYgKG1zZy0+ZmxhZ3MgIT0gUU1JX0NUTF9GTEFHX1JFU1BPTlNF
KQorCQkJcmV0dXJuOworCX0KKwllbHNlIGlmIChtc2ctPmZsYWdzICE9IFFNSV9TRVJWSUNFX0ZM
QUdfUkVTUE9OU0UpCisJCXJldHVybjsKKworCWlmIChtc2ctPnFtdXguc2VydmljZSA9PSBRTUlf
U0VSVklDRV9DVEwpCiAJCXRpZCA9IG1zZy0+Y3RsLnRyYW5zYWN0aW9uOwogCWVsc2UKIAkJdGlk
ID0gbGUxNl90b19jcHUobXNnLT5zdmMudHJhbnNhY3Rpb24pOwo=
--000000000000cdf3660588d8e45e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--000000000000cdf3660588d8e45e--

