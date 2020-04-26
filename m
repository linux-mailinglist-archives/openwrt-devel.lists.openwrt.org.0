Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47351B949E
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 01:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z49FX8crJMRMwAOwbs8vdxdm/1LRuU8Tc0VZslhpFb0=; b=ogKX5P/F1s1PoyQbz9vpQHl5ld
	FVhx6wje7D46qazQ7S5TKZgiPuBv4QNmD98yGT4JBTc54gaFRvaNWvCXV7MemXAXPkcR0En9RS22N
	zwi+23Ef6UXJwdko8vIigj83D4KNPYJWX0wQd2aYRr6RcooVfhXnCROSrUtSp80tYIKlxhralzaWc
	zgi8P+BAp9QEhMQIvA+vkpWhJLHiy3+XVf/oF9SUaDB+KHCnOt8a5y+cDIQK09jNno4eZeDWxr59a
	POPIjCQowFZn8/cSQYLTdX8BSvC7LD0gmvGSiJAOtAMdB7wG2GUvZetm0WuEUav5SmBsNi0F8X4mw
	5hTeOEhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSqX2-0002M7-T9; Sun, 26 Apr 2020 23:17:52 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSqWl-0002Ak-Uk
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 23:17:37 +0000
Received: by mail-pg1-x52a.google.com with SMTP id o185so7819141pgo.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Apr 2020 16:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Ft+HuYq5szTEd5L+xfI6HXAPkHKlx3vqf5yTa1j/qVI=;
 b=FC4BjnUFRUSYAzA/d794PzjbkFJPxlMLerzE0/oEBr7cqh1/sk0+apIP5t9yVn1LvI
 kLNnTrIMAzX62a2r46WbyqpxcllgspuB1USdZy3Rx4pjcuLr4UCo3iX+tkp5rs8BQ2NQ
 DGL/nKYNMgIFwEYtFhm0avv8H1bTv8YQjBD5EW+2u6y/kEh2/Qj5o3V9jH/60pJuvZUr
 sMzbB2Gyn1lcIflExe2hCLhyVHNysnydN90yVgaDWGiZ6+Wgw9XfT31PKgOiHvLA2md5
 jfsw2VRis2fkhedBJub8V2FizFC4vG8kJKzoq+QV4YnBnBMGzUZLKgI9snpCdkHciNPf
 T9Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ft+HuYq5szTEd5L+xfI6HXAPkHKlx3vqf5yTa1j/qVI=;
 b=rbxfvKmpQpQMlXzZOIFVamY49HsDaIHl1v/Kpo6nuEby47miKZNt+XuBPtP9HbsNZ/
 pzFgA6o4/GJ0FobG/fYbBSwsMgbMdCpTWJbGBBCbdm5tkVqdI+AgDZg/0gfYWubbZ1df
 /Nw2zhxWMgN+Vc9kgDsaAVIMRIjwhDQHVUdKKF9OyVQ6xX9a/V76kOGJzym8mK42ULy3
 R+6gxuY2fXSLYC12u31IwbHYv5BxBFqmxZ6A6W5R36jXDl+V1dxOolQkOVTmYG3T0JiU
 qJZX6l2yKrvIYwgZ/e/cft4CXIpKNtCnd9AiAD6vgvEuktg047tCzs1JhRCCs3UYnEtv
 YX8w==
X-Gm-Message-State: AGi0PuaLv13neBrhSLgnVucmyuDRnGLNN1Mwe/yoZkjq64Q/BNtSHiZJ
 GgmEuBxzN65B6MW7brBRmhEaNeowE38=
X-Google-Smtp-Source: APiQypJS7aH1jb7AtcGhY7u3WQ/uxtGEGGjkCqqMwhcvU52EZZjPwUrN80+voYl/lMSpY3dPEJj5NA==
X-Received: by 2002:a63:df54:: with SMTP id h20mr19883453pgj.169.1587943054537; 
 Sun, 26 Apr 2020 16:17:34 -0700 (PDT)
Received: from localhost.localdomain (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id d2sm11087391pfc.7.2020.04.26.16.17.33
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 16:17:34 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 26 Apr 2020 16:17:31 -0700
Message-Id: <20200426231731.1206430-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200426231731.1206430-1-rosenp@gmail.com>
References: <20200426231731.1206430-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_161736_006178_13973EB1 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] exfatprogs: update to 1.0.2
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

VGhpcyByZWxlYXNlIHJlbW92ZXMgaWNvbnYgZGVwZW5kZW5jeSB3aGljaCBuZWVkZWQgbmxzLm1r
IGJlZm9yZS4KClN3aXRjaCBmcm9tIG9sZCBuYW1lIHRvIG5ldyBuYW1lIGluIE1ha2VmaWxlLgoK
QWRkZWQgbWlzc2luZyBoZWFkZXIgcGF0Y2guIFVwc3RyZWFtIGJhY2twb3J0LgoKRml4ZWQgbGlj
ZW5zZSBpbmZvcm1hdGlvbi4KClNldmVyYWwgb3RoZXIgY2xlYW51cHMgZm9yIGNvbnNpc3RlbmN5
IGJldHdlZW4gcGFja2FnZXMuCgpTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdt
YWlsLmNvbT4KLS0tCiBwYWNrYWdlL3V0aWxzL2V4ZmF0cHJvZ3MvTWFrZWZpbGUgICAgICAgICAg
ICAgfCAzMCArKysrKystLS0tLS0tCiAuLi4vZXhmYXRwcm9ncy9wYXRjaGVzLzAxMC1zc2l6ZV90
LnBhdGNoICAgICAgfCA0NSArKysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDYw
IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHBhY2th
Z2UvdXRpbHMvZXhmYXRwcm9ncy9wYXRjaGVzLzAxMC1zc2l6ZV90LnBhdGNoCgpkaWZmIC0tZ2l0
IGEvcGFja2FnZS91dGlscy9leGZhdHByb2dzL01ha2VmaWxlIGIvcGFja2FnZS91dGlscy9leGZh
dHByb2dzL01ha2VmaWxlCmluZGV4IGVmMmI1OTYwNmQuLmQ2MTMwMWM4MzUgMTAwNjQ0Ci0tLSBh
L3BhY2thZ2UvdXRpbHMvZXhmYXRwcm9ncy9NYWtlZmlsZQorKysgYi9wYWNrYWdlL3V0aWxzL2V4
ZmF0cHJvZ3MvTWFrZWZpbGUKQEAgLTEsNDIgKzEsMzggQEAKIGluY2x1ZGUgJChUT1BESVIpL3J1
bGVzLm1rCiAKLVBLR19OQU1FOj1leGZhdC11dGlscwotUEtHX1ZFUlNJT046PTEuMC4xCitQS0df
TkFNRTo9ZXhmYXRwcm9ncworUEtHX1ZFUlNJT046PTEuMC4yCiBQS0dfUkVMRUFTRTo9MQogCi1Q
S0dfTElDRU5TRTo9R1BMLTIuMAotCiBQS0dfU09VUkNFOj0kKFBLR19OQU1FKS0kKFBLR19WRVJT
SU9OKS50YXIuZ3oKIFBLR19TT1VSQ0VfVVJMOj1odHRwczovL2NvZGVsb2FkLmdpdGh1Yi5jb20v
JChQS0dfTkFNRSkvJChQS0dfTkFNRSkvdGFyLmd6LyQoUEtHX1ZFUlNJT04pPwotUEtHX0hBU0g6
PTdkNGU5NWMzMDQyYjU4NjAxYTU4MWRjMDJmNTVlYjRhNzI2YTJmYjhkYjJlNzRhOTYxOWRiZjMw
ODM5OTdlMDYKK1BLR19IQVNIOj1lN2YxNGYzMmRkNjc2MDFmZjQyNzE3ZjQzMjA5M2E0MDBkZTg3
ODc3NDc5NmY2ZjE2ODRmYjlkYmYwZDQ5OWUxCisKK1BLR19NQUlOVEFJTkVSOj1EYW5pZWwgR29s
bGUgPGRhbmllbEBtYWtyb3RvcGlhLm9yZz4KK1BLR19MSUNFTlNFOj1HUEwtMi4wLW9ubHkKK1BL
R19MSUNFTlNFX0ZJTEVTOj1DT1BZSU5HCiAKIFBLR19GSVhVUDo9YXV0b3JlY29uZgogUEtHX0JV
SUxEX1BBUkFMTEVMOj0xCiBQS0dfSU5TVEFMTDo9MQogCi1QS0dfTUFJTlRBSU5FUjo9RGFuaWVs
IEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+Ci0KIGluY2x1ZGUgJChJTkNMVURFX0RJUikv
cGFja2FnZS5tawogCi1DT05GSUdVUkVfQVJHUyArPSBcCi0JLS1lbmFibGUtc2hhcmVkIFwKLQkt
LWRpc2FibGUtc3RhdGljCi0KLWRlZmluZSBQYWNrYWdlL2V4ZmF0LXV0aWxzL0RlZmF1bHQKK2Rl
ZmluZSBQYWNrYWdlL2V4ZmF0cHJvZ3MvRGVmYXVsdAogICBTRUNUSU9OOj11dGlscwogICBDQVRF
R09SWTo9VXRpbGl0aWVzCiAgIFNVQk1FTlU6PUZpbGVzeXN0ZW0KICAgREVQRU5EUzo9K2xpYmV4
ZmF0Ci0gIFVSTDo9aHR0cHM6Ly9naXRodWIuY29tL2V4ZmF0LXV0aWxzL2V4ZmF0LXV0aWxzCisg
IFVSTDo9aHR0cHM6Ly9naXRodWIuY29tL2V4ZmF0cHJvZ3MvZXhmYXRwcm9ncwogZW5kZWYKIAog
ZGVmaW5lIFBhY2thZ2UvZXhmYXQtbWtmcwotICAkKFBhY2thZ2UvZXhmYXQtdXRpbHMvRGVmYXVs
dCkKKyAgJChQYWNrYWdlL2V4ZmF0cHJvZ3MvRGVmYXVsdCkKICAgVElUTEU6PVV0aWxpdHkgZm9y
IGNyZWF0aW5nIGFuIGV4RkFUIEZpbGUgU3lzdGVtCiBlbmRlZgogCiBkZWZpbmUgUGFja2FnZS9l
eGZhdC1mc2NrCi0gICQoUGFja2FnZS9leGZhdC11dGlscy9EZWZhdWx0KQorICAkKFBhY2thZ2Uv
ZXhmYXRwcm9ncy9EZWZhdWx0KQogICBUSVRMRTo9VXRpbGl0eSBmb3IgY2hlY2tpbmcvcmVwYWly
aW5nIGFuIGV4RkFUIEZpbGUgU3lzdGVtCiBlbmRlZgogCkBAIC00OCw2ICs0NCwxMCBAQCBkZWZp
bmUgUGFja2FnZS9saWJleGZhdAogICBBQklfVkVSU0lPTjo9MQogZW5kZWYKIAorQ09ORklHVVJF
X0FSR1MgKz0gXAorCS0tZW5hYmxlLXNoYXJlZCBcCisJLS1kaXNhYmxlLXN0YXRpYworCiBkZWZp
bmUgUGFja2FnZS9saWJleGZhdC9pbnN0YWxsCiAJJChJTlNUQUxMX0RJUikgJCgxKS91c3IvbGli
CiAJJChDUCkgXApkaWZmIC0tZ2l0IGEvcGFja2FnZS91dGlscy9leGZhdHByb2dzL3BhdGNoZXMv
MDEwLXNzaXplX3QucGF0Y2ggYi9wYWNrYWdlL3V0aWxzL2V4ZmF0cHJvZ3MvcGF0Y2hlcy8wMTAt
c3NpemVfdC5wYXRjaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwLi5jNzUy
MTE2NDlkCi0tLSAvZGV2L251bGwKKysrIGIvcGFja2FnZS91dGlscy9leGZhdHByb2dzL3BhdGNo
ZXMvMDEwLXNzaXplX3QucGF0Y2gKQEAgLTAsMCArMSw0NSBAQAorRnJvbSA4NjAzMjZjNmFhODZl
ZjY1NjkzNTMzZDQ1YmExNThiMzI0YmIzNTliIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQorRnJv
bTogSmFtZXMgSGlsbGlhcmQgPGphbWVzLmhpbGxpYXJkMUBnbWFpbC5jb20+CitEYXRlOiBGcmks
IDE3IEFwciAyMDIwIDEzOjEwOjQ5IC0wNjAwCitTdWJqZWN0OiBbUEFUQ0hdIGV4ZmF0cHJvZ3M6
IGFkZCBtaXNzaW5nICNpbmNsdWRlIDxzeXMvdHlwZXMuaD4KK01JTUUtVmVyc2lvbjogMS4wCitD
b250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9VVRGLTgKK0NvbnRlbnQtVHJhbnNmZXIt
RW5jb2Rpbmc6IDhiaXQKKworRml4ZXM6CisuLi9pbmNsdWRlL2xpYmV4ZmF0Lmg6NzI6MTogZXJy
b3I6IHVua25vd24gdHlwZSBuYW1lIOKAmHNzaXplX3TigJkKKyBzc2l6ZV90IGV4ZmF0X3JlYWQo
aW50IGZkLCB2b2lkICpidWYsIHNpemVfdCBzaXplLCBvZmZfdCBvZmZzZXQpOworIF4KKy4uL2lu
Y2x1ZGUvbGliZXhmYXQuaDo3Mjo1MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIOKAmG9mZl90
4oCZCisgc3NpemVfdCBleGZhdF9yZWFkKGludCBmZCwgdm9pZCAqYnVmLCBzaXplX3Qgc2l6ZSwg
b2ZmX3Qgb2Zmc2V0KTsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBeCisuLi9pbmNsdWRlL2xpYmV4ZmF0Lmg6NzM6MTogZXJyb3I6IHVua25vd24g
dHlwZSBuYW1lIOKAmHNzaXplX3TigJkKKyBzc2l6ZV90IGV4ZmF0X3dyaXRlKGludCBmZCwgdm9p
ZCAqYnVmLCBzaXplX3Qgc2l6ZSwgb2ZmX3Qgb2Zmc2V0KTsKKyBeCisuLi9pbmNsdWRlL2xpYmV4
ZmF0Lmg6NzM6NTM6IGVycm9yOiB1bmtub3duIHR5cGUgbmFtZSDigJhvZmZfdOKAmQorIHNzaXpl
X3QgZXhmYXRfd3JpdGUoaW50IGZkLCB2b2lkICpidWYsIHNpemVfdCBzaXplLCBvZmZfdCBvZmZz
ZXQpOworICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeCisuLi9pbmNsdWRlL2xpYmV4ZmF0Lmg6NzU6MTogZXJyb3I6IHVua25vd24gdHlwZSBuYW1l
IOKAmHNzaXplX3TigJkKKyBzc2l6ZV90IGV4ZmF0X3V0ZjE2X2VuYyhjb25zdCBjaGFyICppbl9z
dHIsIF9fdTE2ICpvdXRfc3RyLCBzaXplX3Qgb3V0X3NpemUpOworIF4KKy4uL2luY2x1ZGUvbGli
ZXhmYXQuaDo3NjoxOiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUg4oCYc3NpemVfdOKAmQorIHNz
aXplX3QgZXhmYXRfdXRmMTZfZGVjKGNvbnN0IF9fdTE2ICppbl9zdHIsIHNpemVfdCBpbl9sZW4s
CisgXgorCitTaWduZWQtb2ZmLWJ5OiBKYW1lcyBIaWxsaWFyZCA8amFtZXMuaGlsbGlhcmQxQGdt
YWlsLmNvbT4KKy0tLQorIGluY2x1ZGUvbGliZXhmYXQuaCB8IDEgKworIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQorCitkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saWJleGZhdC5oIGIvaW5j
bHVkZS9saWJleGZhdC5oCitpbmRleCBlZDFmYjRjLi4zNmM4YmRkIDEwMDY0NAorLS0tIGEvaW5j
bHVkZS9saWJleGZhdC5oCisrKysgYi9pbmNsdWRlL2xpYmV4ZmF0LmgKK0BAIC02LDYgKzYsNyBA
QAorICNpZm5kZWYgX0xJQkVYRkFUX0gKKyAKKyAjaW5jbHVkZSA8c3RkYm9vbC5oPgorKyNpbmNs
dWRlIDxzeXMvdHlwZXMuaD4KKyAjaW5jbHVkZSA8d2NoYXIuaD4KKyAKKyAjZGVmaW5lIEtCCQkJ
KDEwMjQpCi0tIAoyLjI1LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
