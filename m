Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7EC1AD5AD
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 07:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cjl45I3xDCDHXq1RaKZooo+dof8yedUQr36dSYYZyWE=; b=JKdItRhT/S8SIG
	7X86BTrpw5NgUkCFZwLYNy7SdBEZddHoWfjP13+Irzje5BeC530HS6pK/tF/yEqTk6L3SPg3Yqh9h
	5Gr6iuOZryiKIjBSOcyS3VSHoDcbOkvCeBdIiK2b0vNY4Tezhr0JntsVSLkhrbJh0cQhnta81UBr6
	2rUMHQaSSlgNlBiZu8qle7/fu8E/t/iO/8YjmRG6mUcAqE0YxN+eYzdFT+aqHxopMwXW1ph7WllHx
	6mlWMDV6PAyB4LsYhL9k+yPwpWB3S54Srute12d2wyocNbIrnL6ZEogAAFoDmcKOogUdaltchxX3L
	b+kWLjCb3vURoAs3luTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPJVY-0005MK-Rq; Fri, 17 Apr 2020 05:25:44 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPJVT-0005Ll-6X
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 05:25:40 +0000
Received: by mail-pg1-x535.google.com with SMTP id 2so551689pgp.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Apr 2020 22:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=A2Xc3fYAT23uosWhKzkPQXMYUOX4ncCZ7NdpNhnxSPA=;
 b=XSa5y7rlK6dend39YoKjq5SGhl8R2AJY21Cn5MM4kKIWZWJBu1Csq5dhIwYnTYoE21
 CNrJFpKJTkAmCdbx+hEcIte8sZSF1Il9OXI0f01uLIikJ8T11bE5M67lnq9R7QYUWgud
 ga7mFyJfD5reM5ZAj95z8/Ydp4QplirewfZNr2rPhz5Slp+9Hh2Po9LK/ver9e4qV+cT
 uo+4Qhf9NDD62GcwuB/Ri1/a1shDqAkxpWc0JQb5OEvmF29P9C8nkb61WqJWRzmrRr+H
 fggAXTS7mT9g9qfT5Oe4Uv+tnDukAibmQZV5A5ZHbIG4RghjzXJKs0+l1Zi7+7hGqH8C
 hBYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=A2Xc3fYAT23uosWhKzkPQXMYUOX4ncCZ7NdpNhnxSPA=;
 b=Kq80AOGdmscNQWqaK0DkSgDPoTVp002n8KywrgJ7Qb0SvLiNjJI+FZYyPOiiHcKs+W
 l8YyGnVhiYUFPxYONW7QhW3dlMMt8NybXXDIGMr2e5YEkxKgSN7P1nSRdWXb+Fd6dK0T
 So4u1SQ8pyrzAwZKFDoFUwiPty+YsKajVV1O/5Xr/T62MssJ5zA4jVRz2lQ5yfcJWSpy
 A29fkwhyV3YuSV2VlLkJxrRuoaDrZLgZasI7YowJ4qMq21rfJdqZSBdzfbQzK1yk05Lz
 1nhtXljX1JCgjJHep8L5ueDtYmjrGc8fCwF1k7FqKBd/Fnnm37i/hBUmVNRylfzpoEm7
 JklA==
X-Gm-Message-State: AGi0PubHPIdNsmrbFlS2dvYfQYqrd6j/zWVuHLrcz2EXATrQuJ7ae/3P
 RbvRPz6YT/IxvSvY2UTIsrw9ND7SgHc=
X-Google-Smtp-Source: APiQypL6G0JYt1DBX6ynCJ44Ojc/5JQ0TDqFctxHgBJ/RqcJ4pFx+XJE8zlFV3bwye+zNWrqLBZWtQ==
X-Received: by 2002:a63:c203:: with SMTP id b3mr1378021pgd.453.1587101137866; 
 Thu, 16 Apr 2020 22:25:37 -0700 (PDT)
Received: from [192.168.0.147] (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id i25sm937183pfo.196.2020.04.16.22.25.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 22:25:37 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 16 Apr 2020 22:25:36 -0700
Message-Id: <12D76388-4AAF-4DD9-A14D-0896BEE8E70C@gmail.com>
References: <20200417060144.2de78e1e@lazus.yip>
In-Reply-To: <20200417060144.2de78e1e@lazus.yip>
To: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_222539_263867_E6B49556 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCHv3] ubox: run init script through
 shellcheck
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEFwciAxNiwgMjAyMCwgYXQgOTowMSBQTSwgQWxl
eGFuZGVyICdseW54aXMnIENvdXplbnMgPGx5bnhpc0BmZTgwLmV1PiB3cm90ZToKPiAKPiDvu79I
aSBSb3NlbiwKPiAKPiBkbyB5b3UgcGxhbiB0byBkbyBhIHY0PyBPdGhlcndpc2UgSSB3b3VsZCBt
ZXJnZSBpdC4KVjQgZm9yIHdoYXQ/Cj4gQmVzdCwKPiBseW54aXMKPiAtLSAKPiBBbGV4YW5kZXIg
Q291emVucwo+IAo+IG1haWw6IGx5bnhpc0BmZTgwLmV1Cj4gamFiYmVyOiBseW54aXNAZmU4MC5l
dQo+IGdwZzogMzkwRCBDRjc4IDhCRjkgQUE1MCA0RjhGICBGMUUyIEMyOUUgOURBNiBBMERGIDg2
MDQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
