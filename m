Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E321EA799A
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Sep 2019 06:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9OnsvpXenLtVFtTppy3VsbD5F+uiWeUSNhFIyM0TjpY=; b=HANjjY7Pe5gx6+bpbRbiHD0gD9
	cR6EveJ5kjlvuzeP2ljK/Sd6Kjt9UUhYcECPH5n65MpxMJv+0WOzcyJKNluwbbkEKfY/PmeduZQhd
	F4qcXzswcb04R98BrJAuaaA9/oURsJ2ixezZ4ZERJl8Gp6GeXapE9GxZXe1H/jqXSMMpVc7c9vLTx
	hymqAFXJ4sxyRVEvoYnBJHQq+wnybrw3TUwG0Q6YySHPB+j5LGRdHxJS8FTgSIXI1GQGzNtIJ7kY4
	U5Nqp2SDdT3uVQ7jpWfMZlzOy4JjEGYTWeTydUaCuDjz4vcOiUcOTyktiCepkOJ3ILb4EKyd22liX
	knqr+14g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Mhe-00038l-NE; Wed, 04 Sep 2019 04:15:30 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5MhM-00038O-7O
 for openwrt-devel@lists.openwrt.org; Wed, 04 Sep 2019 04:15:13 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 1so6828031ybj.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Sep 2019 21:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=khn1Fn5KlJUu60tcOIM4slnAq3GN9amBEsVHTLYjHjg=;
 b=tZpWcR6/anuolezgw2KgMxbyRiZtAi1Z4khMvgJDZQcC8RjR9scbmELhQiiBXc4lVk
 1pp+Q6AJk8VFkMP5V7qG9I8wcVOTXO6mugvwlmzdgh2C5WHAU+yJC7syK6QkiHQ0wIYP
 J/sseMCbQy4++fsQPiyOxFkm/TbTgGepikjzpKuCXOTZbaYnG/L/6IbVxhOB8Uf3HxDQ
 MANRnP50QeWG2FDrsl8Qva/wgbVL4pjsl42VQLwIRwrEd2RIg8YLvoz4TP4ZLlg488qL
 HTTLqyxMpIS9d/nsfC9m1hJwIyp+HdP1zs4V0tu30ATg8aktAOJRY03Srjpr4nSXf7aP
 Ec8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=khn1Fn5KlJUu60tcOIM4slnAq3GN9amBEsVHTLYjHjg=;
 b=KCwt/nq/D5ibpyJtPfbq5sJ7zInScBlevOSS3bHnp7bNsGIzxpmqlpvT33st+8PKrw
 kNgTidVwVR2cyT+bOSD35Js2LZmHoxQJSI5yXVMd1BrogbSRMlB9BlU/vM+xbBsKOE5H
 wai5CxjC+jBFYe/w6CHGfD1SMdJXtgeXgFdQYdEKiJ8U8Fdw8TEBiKoFqit6GzR6EOwy
 D9wlmNn059HJCrYfzShTOjQ+Jd5H3eGoCJM9zu51RwMHnCikIjq1FVOTMQ5O3HpfVdYf
 u7fQ87hCm5ayAqlT4GleUbjkhpCkSpfWOQTfdHd5/THz/vQeAN7hVOpBbY3fnyyWTs3E
 WWRA==
X-Gm-Message-State: APjAAAWXDG/m3hkTQHkT6xkNkuBfIcmuC7c+oYjVDpSghzj8QF68ZYM8
 XC036V6MF8otmDXMQZNAdeJthP4T/XD0Luh4Lss=
X-Google-Smtp-Source: APXvYqyjkjxET+OPIuEVu/BNXPYlXoPRKfpOSMyJfc0cXpcMJTHWeMbYPQJoKyO9/zCrjmZ3jnRy3TsZBeQQtilCHsk=
X-Received: by 2002:a25:2f56:: with SMTP id v83mr24641192ybv.2.1567570508861; 
 Tue, 03 Sep 2019 21:15:08 -0700 (PDT)
MIME-Version: 1.0
References: <CACna6rwS8WB1mmuxbod3OhZzdgSkCDEBLOULDo3hraOOedhknA@mail.gmail.com>
In-Reply-To: <CACna6rwS8WB1mmuxbod3OhZzdgSkCDEBLOULDo3hraOOedhknA@mail.gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 4 Sep 2019 06:14:57 +0200
Message-ID: <CACna6rxLD8-ta3ouycyL=0jKdgwBSsqwyyEd9P=-stcw9dHTNQ@mail.gmail.com>
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>, 
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_211512_293745_5531DA23 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b2d listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] RPi Zero W: broken serial since 4.19 switch
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCAyIFNlcCAyMDE5IGF0IDE2OjA4LCBSYWZhxYIgTWnFgmVja2kgPHphamVjNUBnbWFp
bC5jb20+IHdyb3RlOgo+IFN0YXJ0aW5nIHdpdGggdGhlIGNvbW1pdCA0Mjk1NDg1NzE5MGIgKCJi
cmNtMjcwODogYWRkIGxpbnV4IDQuMTkKPiBzdXBwb3J0IikgSSBkb24ndCBnZXQgYW55IG91dHB1
dCBvdmVyIG15IFJhc3BiZXJyeSBQaSBaZXJvIFcgc2VyaWFsCj4gY29uc29sZS4gT3BlbldydCBz
dGlsbCBib290cyBmaW5lIChJIGNhbiBzZWUgZnVsbCBib290bG9nIG9uIGEgc2NyZWVuKS4KCkZp
eGVkIGJ5IHRoZToKNTI4N2FjMmRmYmQwICgiYnJjbTI3MDg6IHJlc3RvcmUgVUFSVCBvbiBSUGkg
MFcsIDNCLCAzQisgYW5kIDRCIikKaHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3BlbndydC9v
cGVud3J0LmdpdDthPWNvbW1pdGRpZmY7aD01Mjg3YWMyZGZiZDAzOTNlMjNlMzVlNDE1ZGRmMzdm
NDJkZjliNThlCgpUaGFuayB5b3UhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
