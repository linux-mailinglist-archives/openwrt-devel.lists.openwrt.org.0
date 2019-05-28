Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A5A2C608
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 14:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arCSn2Tjol3QUzWyiOkJlzkgpEiMshWk7Mkm14iqepY=; b=Ts6gVeJf1jm/Ah
	8m8H36YE1+8LQRCpf3CE5DbeQcF/0KIu4a9pNML6Ys3BjByeUtGm2PDFufvmd//j/Q13Woxau4D+2
	DPYlxLGocdXaR544RN+1UxhmumNO/510U3zw+wUdz2wlZedNZ1qpQp6Cc5Kn/nFmMwbSANtrqIgmn
	FGokzGV1QvieEqrSO8BAGfLd/Xowlyrmn66Z6ueprIxe4/uDSHrKsiqzIqmr5a5w4xezO24S8kAM7
	HqXNvpWdbCRaEZ//YkMMmdJpIhvIsRIHosX6TA3nmh6uAFWdTTxGU+/cRaOHnRPtmUtfv8d2z3o2a
	3LoiRCe4tYpHLJuKnEvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVan0-00010P-Sv; Tue, 28 May 2019 12:01:10 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVams-0000yT-NS
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 12:01:04 +0000
Received: by mail-lf1-x144.google.com with SMTP id f1so14341492lfl.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 May 2019 05:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vW7EKLb7jMiXSPo6MCvs8hX1FSwhDB3lPCHJ3OI3JO8=;
 b=JDUnSQObcR/YixKS3pXKDblviAmud+VPtOiW2g9tj1QAFRcEaYpOvU/uY4SnoNjNd/
 OF09iUoGPZllNlayf61EwtYtzmE6VyOJC81y01aieuwSzs/8AxNsVC8T14cw4Rf5K939
 N1556rHIwzScQKJlZRA4LCoDC+EdfIoxCwJfd35XZ+TjtayJg+0tO3p00TgMWf8ImFvj
 d9HqfZL1qFDg8iIvo8PUwyI+mKnyuh1f2PjzIe0h2mXXUeHIYO5ozcvWFR0llZaS1fj+
 U0oYHUb5mNcKUkeKrFBuV/KpGGK6ubBo5HeioOZEcr7q5WBaFj2BHuu7h7rveixb7AD6
 MOAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vW7EKLb7jMiXSPo6MCvs8hX1FSwhDB3lPCHJ3OI3JO8=;
 b=BjUKeSQxK+z2yPCxzEItwJb/mTH4YBxDis3sRzLDCLHg8tfzaO6KuEU9GiG04i7gtq
 MddsXCdj3Z1qoFF1MROr8HtS0Q4RUvWEnXYYnTEqGgGrSN7NHtLpsMS7+ucxcYvFZoQ9
 R1wICpJCvnjY0ZJE/strm/Qgtw+9R2ATdWjmVk39L4sSuJnRd2yaET650wPzkczW+D0i
 xa0aGLSbJsY2SZCyjrMN8wDrvI+km+BgDLNL3TLks6QUVgcYk5wfgFGVesZlIzR0j9tb
 vwe0MNQQxvzxEzQXVfiv9lPa/XiEELRC+yU7SOsgT5jedjg4x1yX9/wt/v8HpHcHOFwS
 XMXw==
X-Gm-Message-State: APjAAAWcc8C0HqyfVfk32YFFXO2IPnamSY1xA5wfwhxrsPeGqkZvvIgX
 f+aIMxipB643e2FdaUqQ0KvJSvV0e2cWEiyziSQ=
X-Google-Smtp-Source: APXvYqz4veyvXVaRV4cNXO+ehFHeQWXKv2YoVE1QrJ5WkWHbsv563bPkTTHIfoBO6xF4pMPe4JTfYlx3gAkUEKke8c8=
X-Received: by 2002:a19:660a:: with SMTP id a10mr1073151lfc.17.1559044859822; 
 Tue, 28 May 2019 05:00:59 -0700 (PDT)
MIME-Version: 1.0
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
 <1558992584-11997-4-git-send-email-ynezz@true.cz>
In-Reply-To: <1558992584-11997-4-git-send-email-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 28 May 2019 20:00:48 +0800
Message-ID: <CAECwjAjknY85+YOn07o6ixHkODkkE+85GrMn016ZUESq3EAfMg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_050102_763702_13FE82FF 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] base-files: move urandom seed bits
 into separate package
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
Cc: =?UTF-8?Q?Stephan_M=C3=BCller?= <smueller@chronox.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCAyOCBNYXkgMjAxOSBhdCAwNTozMCwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6CgouLi4KCj4gKwo+ICtzYXZlKCkgewo+ICsgICAgdG91Y2ggIiQxLnRtcCIKPiAr
ICAgIGNob3duIHJvb3Q6cm9vdCAiJDEudG1wIgo+ICsgICAgY2htb2QgNjAwICIkMS50bXAiCj4g
KyAgICBnZXRyYW5kb20gNTEyID4gIiQxLnRtcCIKPiArICAgIG12ICIkMS50bXAiICIkMSIKPiAr
ICAgIGVjaG8gIlNlZWQgc2F2ZWQgKCQxKSIKPiArfQoKTWF5YmUgd2UgY291bGQgcHJlcGFyZSB0
aGUgLnRtcCBmaWxlIGluIC90bXAgb2YgdG1wZnMgdHlwZSwgdG8gc2F2ZSBhCmZldyByb3VuZHMg
b2Ygbm9yIGZsYXNoIHdyaXRlcy4KCiAgICAgICAgICAgICAgICB5b3Vzb25nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
