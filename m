Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1C61A0DC2
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 14:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nTgMrAVrC6yx2QmVl+FFI9PQv9Iqcgx9/fieVfDSye8=; b=pjvL/6htrfyoqs
	dY5eOAHWrzYFof4Sps6Ypp73yTqc6kLKKpj8sHp5eRzjSnHvJ/P1OGg6w6ePR1EyZSSTecQM+TpL8
	uWNaIs3GTpywO2t/ijOIWvUoACqhj7tnQnULi4GqQWiAkvy7f9TYt2H3Us09os4GEMYhFZcWkOU1L
	/o0KBk/WH8okkz7c7kuSNCKsIDjdaGAvdYev5umbLhQaQWduaHcY/MQbEsd1HTrAPUSrJ6KfUWymK
	tB1CoWU+LbD1166lOrtK13z1DEK/+ywJ0u8OskP4Oe1Z7QezWJtpAueIUXdYWPje6GYRQwkO1lSkF
	uIYdQ/BseeKRYj1Hm3rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnSA-0006nR-Pr; Tue, 07 Apr 2020 12:35:42 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnRz-0006mk-RG
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 12:35:33 +0000
Received: by mail-wr1-x42c.google.com with SMTP id p10so3681715wrt.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 05:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PAXiuv6qBv2ej45ME7IW4cbGURcNBv6e3GRHzjp3JM4=;
 b=D0sk5C7y+M10GrDpGWm3HuDoZ9XjE7mSlE+TPIM2AMwKstPZXSe6rLEW4tRoOVbYJS
 ZSWQHkQXQFR3etwAhEDNH0IHoo8yJt4L+fi7feslt3vSkBExRkS3vGqrO0odv3I9Uszr
 njOHetw7CAZzSQq9BpN9zUQbMGwS2ZJjAO63s1aDgZ7jUis3WGtZl5XVMJkA/zL73GFu
 X2/NflQz+hlPw+5QeTGAlrkpX2WXtgbcW0Fre7GYUdlThUKSW1Uy4+hYFhfK1TRo60MK
 aWOK819c7nea7NGA7SsetgbodNGdFHb1GNtLIw+ZM/kLS95U3uRqjVBsJl3Sw2n+SAvW
 4mSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PAXiuv6qBv2ej45ME7IW4cbGURcNBv6e3GRHzjp3JM4=;
 b=oE7pTE+HZNYxWOap2OpB5GZT3dFGDDBAzHt7DQZOft0cv5FOwGAWQnbtPA5SCL8e26
 p20l5td84GGTRCd3mvQZ/NpXMTJ8L51LZDR1SkgHKW1uWWTvm9ML9tnXotzlm3EjHWZQ
 plVh2WdCp8NNshxuhzUJvPGuwn836C9IaV42Tgq+xGIJgQ7pp4lDW4Xuy0N3MsL2bF96
 bho7R9dFuI6cPD1ubDKL75y/4U3Rhftj0GmOPOC/JolBd/ex4Fwdik4sja+6rxqjdPI9
 Tf7rulXOWaJznuD87bHpCOsWFR9kuj6EATbW1rDUftOQUGJ0fzTumA+2c/NUIBWlljUB
 Erig==
X-Gm-Message-State: AGi0Pubo786mvUZjyV9Wcmfj6WzBtn1XILAJroEeXkB3chNTHc7UQtxF
 TSnkOHtt9DE560QaZNMO3pseCUYY
X-Google-Smtp-Source: APiQypIAo/7f4iZ3wIX3519W74vi3bcvv1ZxgPL4VOoJeOMHhzlYWB3SeNUSFtgyZpFf8AYf+YdUPA==
X-Received: by 2002:adf:df8a:: with SMTP id z10mr2457030wrl.278.1586262929447; 
 Tue, 07 Apr 2020 05:35:29 -0700 (PDT)
Received: from tool.localnet ([213.177.195.242])
 by smtp.googlemail.com with ESMTPSA id d13sm30802958wrv.34.2020.04.07.05.35.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 05:35:28 -0700 (PDT)
From: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 07 Apr 2020 14:35:26 +0200
Message-ID: <5357582.DvuYhMxLoT@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_053531_892560_E3730375 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v4] mvebu: add support for Buffalo
 LinkStation LS421DE
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
Cc: tomek_n@o2.pl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QnVmZmFsbyBMaW5rU3RhdGlvbiBMUzQyMURFIGlzIGEgZHVhbCBiYXkgTkFTLCBiYXNlZCBvbiBN
YXJ2ZWxsIEFybWFkYSAzNzAKCkhhcmR3YXJlOgogICBTb0M6ICAgICAgICAgTWFydmVsbCBBcm1h
ZGEgODhGNjcwNy1BMQogICBDUFU6ICAgICAgICAgQ29ydGV4LUE5IDEyMDAgTUh6LCAxIGNvcmUK
ICAgRmxhc2g6ICAgICAgIFNQSS1OT1IgMSBNaUIsIE5BTkQgNTEyIE1pQgogICBSQU06ICAgICAg
ICAgRERSMyA1MTIgTWlCCiAgIEV0aGVybmV0OiAgICAxeCAxMC8xMDAvMTAwMCBNYnBzCiAgIFVT
QjogICAgICAgICAxeCAyLjAsIDF4IDMuMAogICBTQVRBOiAgICAgICAgMnggMy4wIEdicHMKICAg
TEVEcy9JbnB1dCA6IDV4IC8gMnggKDF4IGJ1dHRvbiwgMXggc2xpZGUtc3dpdGNoKQogICBSVEM6
ICAgICAgICAgUmljb2ggUlM1QzM3MkEsIEkyQywgbm8gYmF0dGVyeQoKRmxhc2ggaW5zdHJ1Y3Rp
b24gKFVBUlQrVEZUUCk6CiAgMS4gRG93bmdyYWRlIHRoZSBPRU0gZmlybXdhcmUgdG8gMS4zNCB2
ZXJzaW9uIChCVUZGQUxPX0JPT1RWRVI9MC4xMykKICAyLiBSZW1vdmUgYW55IGhhcmQgZHJpdmUg
ZnJvbSBpbnNpZGUgdGhlIGJheXMuCiAgMy4gQm9vdCB0aGUgT3BlbndydCBpbml0cmFtZnMgaW1h
Z2UgdXNpbmcgdGhlIFUtQm9vdCBzZXJpYWwgY29uc29sZToKICAgICAgICAgdGZ0cGJvb3QgMHgx
MjAwMDAwIGJ1ZmZhbG9fbHM0MjFkZS1pbml0cmFtZnMta2VybmVsLmJpbgogICAgICAgICBib290
bSAweDEyMDAwMDAKICA0LiBGbGFzaCB0aGUgc3lzdXBncmFkZSBpbWFnZSB1c2luZyB0aGUgT3Bl
bndydCBjb25zb2xlOgogICAgICAgICBzeXN1cGdyYWRlIC1uIGJ1ZmZhbG9fbHM0MjFkZS1zcXVh
c2hmcy1zeXN1cGdyYWRlLmJpbgogIDUuIFdhaXQgdW50aWwgaXQgZmluaXNoLCB0aGUgZGV2aWNl
IHdpbGwgcmVib290IHdpdGggT3BlbndydCBpbnN0YWxsZWQKICAgICBvbiB0aGUgTkFORCBmbGFz
aC4KCk5vdGU6CiAgLSBEZXZpY2Ugc2h1dGluZyBkb3duIGRvZXNuJ3Qgd29yaywgZXZlbiBpZiB0
aGUgcG93ZXIgc2xpZGUgc3dpdGNoIGlzCiAgICB1c2VkLiBXZSBtdXN0IGZpcnN0LCB2aWEgTURJ
Tywgc2V0IHRoZSB1bnVzZWQgTEVEMiBhdCB0aGUgZXRoZXJuZXQKICAgIHBoeTAgdG8gb2ZmIHN0
YXRlLiBSZWJvb3Qgd29ya3Mgb2suCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgR29uesOhbGV6IENh
YmFuZWxhcyA8ZGdjYnVldUBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBUb21hc3ogTWFjaWVqIE5v
d2FrIDx0b21la19uQG8yLnBsPgotLS0KQ2hhbmdlcyBpbiB2MjoKIC0gZHRzIGZpbGUgdHVuZWQK
IC0gQWRqdXN0ZWQgdGhlIGkyYyBidXMgc3BlZWQgdG8gdGhlIG1heCBzdXBwb3J0ZWQgYnkgdGhl
IFJUQwogLSBEZWxldGVkIHVubmVkZWQga2VybmVsIHBhdGNoCiAtIEltYWdlIGNyZWF0aW9uOiBv
bmx5IGluY2x1ZGVkIG5lY2Nlc2FyeSBwYWNrYWdlcywgZGVsZXRlIHRoZSB1YmluaXplCiAgIHBh
cmFtZXRlcgoKQ2hhbmdlcyBpbiB2MzoKIC0gZHRzIGZpbGUgdHVuZWQKIC0gQWRqdXN0ZWQgdGhl
IGkyYyBidXMgc3BlZWQgdG8gdGhlIG1heCBzdXBwb3J0ZWQgYnkgdGhlIFNvQwogLSBBZGRlZCB2
ZGQgY3B1IHBvd2VyIGRvd24gcGlubXV4CiAtIEltYWdlIGNyZWF0aW9uOiBhZGp1c3RlZCB0aGUg
cGFja2FnZXMgcmVxdWlyZWQgYnkgdGhpcyBkZXZpY2UuIAogICBEZWxldGVkIHJlZHVuZGFudCBw
YXJhbWV0ZXJzLgogLSBGaXhlZCBpbnN0YWxsYXRpb24gaW5zdHJ1Y3Rpb25zCgpDaGFuZ2VzIGlu
IHY0OgogLSBDb21taXQgbG9nOiBBZGRlZCByZXZpZXdlciBpbmZvCgogLi4uL2Jhc2UtZmlsZXMv
bGliL3ByZWluaXQvMDZfc2V0X2lmYWNlX21hYyAgIHwgICA0ICsKIC4uLi9iYXNlLWZpbGVzL2xp
Yi91cGdyYWRlL3BsYXRmb3JtLnNoICAgICAgICB8ICAgMyArCiAuLi4vYm9vdC9kdHMvYXJtYWRh
LTM3MC1idWZmYWxvLWxzNDIxZGUuZHRzICAgfCAzNjAgKysrKysrKysrKysrKysrKysrCiB0YXJn
ZXQvbGludXgvbXZlYnUvaW1hZ2UvTWFrZWZpbGUgICAgICAgICAgICAgfCAgMTQgKwogdGFyZ2V0
L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleGE5Lm1rICAgICAgICAgIHwgIDE2ICsKIDUgZmlsZXMg
Y2hhbmdlZCwgMzk3IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGlu
dXgvbXZlYnUvZmlsZXMtNC4xOS9hcmNoL2FybS9ib290L2R0cy9hcm1hZGEtMzcwLWJ1ZmZhbG8t
bHM0MjFkZS5kdHMKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvY29ydGV4YTkvYmFz
ZS1maWxlcy9saWIvcHJlaW5pdC8wNl9zZXRfaWZhY2VfbWFjIGIvdGFyZ2V0L2xpbnV4L212ZWJ1
L2NvcnRleGE5L2Jhc2UtZmlsZXMvbGliL3ByZWluaXQvMDZfc2V0X2lmYWNlX21hYwppbmRleCBm
ZDQxODM2YzhkLi42MmNlMjY1M2EwIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvbXZlYnUvY29y
dGV4YTkvYmFzZS1maWxlcy9saWIvcHJlaW5pdC8wNl9zZXRfaWZhY2VfbWFjCisrKyBiL3Rhcmdl
dC9saW51eC9tdmVidS9jb3J0ZXhhOS9iYXNlLWZpbGVzL2xpYi9wcmVpbml0LzA2X3NldF9pZmFj
ZV9tYWMKQEAgLTksNiArOSwxMCBAQCBwcmVpbml0X3NldF9tYWNfYWRkcmVzcygpIHsKIAkuIC9s
aWIvZnVuY3Rpb25zLnNoCiAKIAljYXNlICQoYm9hcmRfbmFtZSkgaW4KKwlidWZmYWxvLGxzNDIx
ZGUpCisJCW1hYz0kKG10ZF9nZXRfbWFjX2FzY2lpIHUtYm9vdC1lbnYgZXRoMWFkZHIpCisJCWlw
IGxpbmsgc2V0IGRldiBldGgwIGFkZHJlc3MgJG1hYyAyPi9kZXYvbnVsbAorCQk7OwogCWxpbmtz
eXMsY2FpbWFufGxpbmtzeXMsY29icmF8bGlua3N5cyxyYW5nb3xsaW5rc3lzLHNoZWxieXxsaW5r
c3lzLHZlbm9tKQogCQkjIHJlbmFtZSBpbnRlcmZhY2VzIGJhY2sgdG8gdGhlIHdheSB0aGV5IHdl
cmUgd2l0aCA0LjQKIAkJY2FzZSAiJChyZWFkbGluayAvc3lzL2NsYXNzL25ldC9ldGgwKSIgaW4K
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9jb3J0ZXhhOS9iYXNlLWZpbGVzL2xpYi91
cGdyYWRlL3BsYXRmb3JtLnNoIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE5L2Jhc2UtZmls
ZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKaW5kZXggOGJhZWQ5NjlhMy4uNjMwNDJiMTUzNSAx
MDA3NTUKLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE5L2Jhc2UtZmlsZXMvbGliL3Vw
Z3JhZGUvcGxhdGZvcm0uc2gKKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE5L2Jhc2Ut
ZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKQEAgLTIyLDYgKzIyLDkgQEAgcGxhdGZvcm1f
Y2hlY2tfaW1hZ2UoKSB7CiAKIHBsYXRmb3JtX2RvX3VwZ3JhZGUoKSB7CiAJY2FzZSAiJChib2Fy
ZF9uYW1lKSIgaW4KKwlidWZmYWxvLGxzNDIxZGUpCisJCW5hbmRfZG9fdXBncmFkZSAiJDEiCisJ
CTs7CiAJY3puaWMsdHVycmlzLW9tbmlhfFwKIAlzb2xpZHJ1bixjbGVhcmZvZy1iYXNlLWExfFwK
IAlzb2xpZHJ1bixjbGVhcmZvZy1wcm8tYTEpCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZl
YnUvZmlsZXMtNC4xOS9hcmNoL2FybS9ib290L2R0cy9hcm1hZGEtMzcwLWJ1ZmZhbG8tbHM0MjFk
ZS5kdHMgYi90YXJnZXQvbGludXgvbXZlYnUvZmlsZXMtNC4xOS9hcmNoL2FybS9ib290L2R0cy9h
cm1hZGEtMzcwLWJ1ZmZhbG8tbHM0MjFkZS5kdHMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMC4uNmI4YTk2NGFiMwotLS0gL2Rldi9udWxsCisrKyBiL3RhcmdldC9saW51eC9t
dmVidS9maWxlcy00LjE5L2FyY2gvYXJtL2Jvb3QvZHRzL2FybWFkYS0zNzAtYnVmZmFsby1sczQy
MWRlLmR0cwpAQCAtMCwwICsxLDM2MCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChH
UEwtMi4wKyBPUiBNSVQpCisvKgorICogRGV2aWNlIFRyZWUgZmlsZSBmb3IgQnVmZmFsbyBMaW5r
U3RhdGlvbiBMUzQyMURFCisgKgorICogQ29weXJpZ2h0IChDKSAyMDIwIERhbmllbCBHb256w6Fs
ZXogQ2FiYW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KKyAqLworCisvZHRzLXYxLzsKKworI2lu
Y2x1ZGUgImFybWFkYS0zNzAuZHRzaSIKKyNpbmNsdWRlICJtdmVidS1saW5rc3RhdGlvbi1mYW4u
ZHRzaSIKKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9pbnB1dC9pbnB1dC5oPgorCisvIHsKKwltb2RlbCA9ICJCdWZmYWxvIExpbmtTdGF0
aW9uIExTNDIxREUiOworCWNvbXBhdGlibGUgPSAiYnVmZmFsbyxsczQyMWRlIiwgIm1hcnZlbGws
YXJtYWRhMzcwIiwgIm1hcnZlbGwsYXJtYWRhLTM3MC14cCI7CisKKwlhbGlhc2VzIHsKKwkJbGVk
LWJvb3QgPSAmbGVkX2Jvb3Q7CisJCWxlZC1mYWlsc2FmZSA9ICZsZWRfZmFpbHNhZmU7CisJCWxl
ZC1ydW5uaW5nID0gJmxlZF9wb3dlcjsKKwkJbGVkLXVwZ3JhZGUgPSAmbGVkX3VwZ3JhZGU7CisJ
fTsKKworCWNob3NlbiB7CisJCWJvb3RhcmdzID0gImNvbnNvbGU9dHR5UzAsMTE1MjAwIGVhcmx5
cHJpbnRrIG5vaW5pdHJkIHJvb3Rmc3R5cGU9c3F1YXNoZnMiOworCQlzdGRvdXQtcGF0aCA9ICJz
ZXJpYWwwOjExNTIwMG44IjsKKwkJYXBwZW5kLXJvb3RibG9jayA9ICJudWxscGFyYW1ldGVyPSI7
IC8qIG92ZXJyaWRlIHRoZSBib290bG9hZGVyIGFyZ3MgKi8KKwl9OworCisJbWVtb3J5IHsKKwkJ
ZGV2aWNlX3R5cGUgPSAibWVtb3J5IjsKKwkJcmVnID0gPDB4MDAwMDAwMDAgMHgyMDAwMDAwMD47
IC8qIDUxMiBNQiAqLworCX07CisKKwlzb2MgeworCQlyYW5nZXMgPSA8TUJVU19JRCgweGYwLCAw
eDAxKSAwIDB4ZDAwMDAwMDAgMHgxMDAwMDAKKwkJCSAgTUJVU19JRCgweDAxLCAweGUwKSAwIDB4
ZmZmMDAwMDAgMHgxMDAwMDAKKwkJCSAgTUJVU19JRCgweDA5LCAweDAxKSAwIDB4ZjExMDAwMDAg
MHgxMDAwMD47CisJfTsKKworCWdwaW9fZmFuIHsKKwkJZ3Bpb3MgPSA8JmdwaW8wIDEzIEdQSU9f
QUNUSVZFX0hJR0gKKwkJCSZncGlvMCAxNCBHUElPX0FDVElWRV9ISUdIPjsKKwkJYWxhcm0tZ3Bp
b3MgPSA8JmdwaW8wIDEwIEdQSU9fQUNUSVZFX0hJR0g+OworCX07CisKKwlncGlvX2tleXMgewor
CQljb21wYXRpYmxlID0gImdwaW8ta2V5cyI7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkj
c2l6ZS1jZWxscyA9IDwwPjsKKwkJcGluY3RybC0wID0gPCZwbXhfaGRkX3ByZXNlbnQgJnBteF9i
dXR0b25zPjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKworCQloZGQxLXByZXNlbnQg
eworCQkJbGFiZWwgPSAiSEREMSBQcmVzZW50IjsKKwkJCWxpbnV4LGNvZGUgPSA8S0VZX1BST0cx
PjsKKwkJCWdwaW9zID0gPCZncGlvMCAxMSBHUElPX0FDVElWRV9MT1c+OworCQl9OworCisJCWhk
ZDItcHJlc2VudCB7CisJCQlsYWJlbCA9ICJIREQyIFByZXNlbnQiOworCQkJbGludXgsY29kZSA9
IDxLRVlfUFJPRzI+OworCQkJZ3Bpb3MgPSA8JmdwaW8wIDEyIEdQSU9fQUNUSVZFX0xPVz47CisK
KwkJfTsKKworCQlwb3dlciB7CisJCQlsYWJlbCA9ICJQb3dlciBTd2l0Y2giOworCQkJbGludXgs
Y29kZSA9IDxLRVlfUE9XRVI+OworCQkJbGludXgsaW5wdXQtdHlwZSA9IDxFVl9TVz47CisJCQln
cGlvcyA9IDwmZ3BpbzAgMTUgR1BJT19BQ1RJVkVfTE9XPjsKKwkJfTsKKworCQlmdW5jdGlvbiB7
CisJCQlsYWJlbCA9ICJGdW5jdGlvbiBCdXR0b24iOworCQkJbGludXgsY29kZSA9IDxLRVlfT1BU
SU9OPjsKKwkJCWdwaW9zID0gPCZncGlvMCAxNiBHUElPX0FDVElWRV9MT1c+OworCQl9OworCX07
CisKKwlncGlvX2xlZHMgeworCQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7CisJCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7CisJCXBpbmN0cmwtMCA9IDwmcG14X2xlZHMxICZwbXhfbGVkczI+
OworCisJCXN5c3RlbV9yZWQgeworCQkJbGFiZWwgPSAibHM0MjFkZTpyZWQ6c3lzdGVtIjsKKwkJ
CWdwaW9zID0gPCZncGlvMCA3IEdQSU9fQUNUSVZFX0hJR0g+OworCQl9OworCisJCWxlZF9wb3dl
cjogcG93ZXJfd2hpdGUgeworCQkJbGFiZWwgPSAibHM0MjFkZTp3aGl0ZTpwb3dlciI7CisJCQln
cGlvcyA9IDwmZ3BpbzEgMjIgR1BJT19BQ1RJVkVfSElHSD47CisJCQlkZWZhdWx0LXN0YXRlID0g
Im9uIjsKKwkJfTsKKworCQlsZWRfZmFpbHNhZmU6IHBvd2VyX3JlZCB7CisJCQlsYWJlbCA9ICJs
czQyMWRlOnJlZDpwb3dlciI7CisJCQlncGlvcyA9IDwmZ3BpbzEgMjMgR1BJT19BQ1RJVkVfSElH
SD47CisJCX07CisKKwkJbGVkX3VwZ3JhZGU6IHBvd2VyX29yYW5nZSB7CisJCQlsYWJlbCA9ICJs
czQyMWRlOm9yYW5nZTpwb3dlciI7CisJCQlncGlvcyA9IDwmZ3BpbzEgMjUgR1BJT19BQ1RJVkVf
SElHSD47CisJCX07CisKKwkJbGVkX2Jvb3Q6IHN5c3RlbV93aGl0ZSB7CisJCQlsYWJlbCA9ICJs
czQyMWRlOndoaXRlOnN5c3RlbSI7CisJCQlncGlvcyA9IDwmZ3BpbzEgMjcgR1BJT19BQ1RJVkVf
SElHSD47CisJCX07CisKKwkJaGRkMV9yZWQgeworCQkJbGFiZWwgPSAibHM0MjFkZTpyZWQ6aGRk
MSI7CisJCQlncGlvcyA9IDwmZ3BpbzEgMjkgR1BJT19BQ1RJVkVfSElHSD47CisJCQlkZWZhdWx0
LXN0YXRlID0gIm9mZiI7CisJCQlsaW51eCxkZWZhdWx0LXRyaWdnZXIgPSAiZGlzay1hY3Rpdml0
eSI7CisJCX07CisKKwkJaGRkMl9yZWQgeworCQkJbGFiZWwgPSAibHM0MjFkZTpyZWQ6aGRkMiI7
CisJCQlncGlvcyA9IDwmZ3BpbzEgMzAgR1BJT19BQ1RJVkVfSElHSD47CisJCQlkZWZhdWx0LXN0
YXRlID0gIm9mZiI7CisJCQlsaW51eCxkZWZhdWx0LXRyaWdnZXIgPSAiZGlzay1hY3Rpdml0eSI7
CisJCX07CisJfTsKKworCXJlZ3VsYXRvcnMgeworCQljb21wYXRpYmxlID0gInNpbXBsZS1idXMi
OworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisJCXBpbmN0
cmwtMCA9IDwmcG14X3Bvd2VyX3VzYiAmcG14X3Bvd2VyX2hkZDEgJnBteF9wb3dlcl9oZGQyPjsK
KworCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCisJCXVzYl92NV9yZWd1bGF0b3I6IHVz
Yi12NS1yZWd1bGF0b3IgeworCQkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQkJ
cmVndWxhdG9yLW5hbWUgPSAiVVNCIjsKKwkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUw
MDAwMDA+OworCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47CisJCQllbmFi
bGUtYWN0aXZlLWhpZ2g7CisJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCQkJcmVndWxhdG9yLWJv
b3Qtb247CisJCQlncGlvID0gPCZncGlvMCA1IEdQSU9fQUNUSVZFX0hJR0g+OworCQl9OworCisJ
CWF0YTFfcmVndWxhdG9yOiBhdGExLXJlZ3VsYXRvciB7CisJCQljb21wYXRpYmxlID0gInJlZ3Vs
YXRvci1maXhlZCI7CisJCQlyZWcgPSA8MT47CisJCQlyZWd1bGF0b3ItbmFtZSA9ICJIREQxIjsK
KwkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKKwkJCXJlZ3VsYXRvci1t
YXgtbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKKwkJCXN0YXJ0dXAtZGVsYXktdXMgPSA8MjAwMDAw
MD47CisJCQllbmFibGUtYWN0aXZlLWhpZ2g7CisJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCQkJ
cmVndWxhdG9yLWJvb3Qtb247CisJCQlncGlvID0gPCZncGlvMCA4IEdQSU9fQUNUSVZFX0hJR0g+
OworCQl9OworCisJCWF0YTJfcmVndWxhdG9yOiBhdGEyLXJlZ3VsYXRvciB7CisJCQljb21wYXRp
YmxlID0gInJlZ3VsYXRvci1maXhlZCI7CisJCQlyZWcgPSA8Mj47CisJCQlyZWd1bGF0b3ItbmFt
ZSA9ICJIREQyIjsKKwkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKKwkJ
CXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKKwkJCXN0YXJ0dXAtZGVsYXkt
dXMgPSA8NDAwMDAwMD47CisJCQllbmFibGUtYWN0aXZlLWhpZ2g7CisJCQlyZWd1bGF0b3ItYWx3
YXlzLW9uOworCQkJcmVndWxhdG9yLWJvb3Qtb247CisJCQlncGlvID0gPCZncGlvMCA5IEdQSU9f
QUNUSVZFX0hJR0g+OworCQl9OworCX07CisKKwkvKiBGSVhNRTogdGhpcyBkcml2ZXIgbmVlZHMg
dG8gYmUgYXdhcmUgb2YgdGhlIExFRDIgZXRoIHBoeSB1c2UsCisJICAgd2hpY2ggbXVzdCBiZSBz
ZXQgdG8gb2ZmIHN0YXRlIGJlZm9yZSBzaHV0dGluZyBkb3duIHRoZSBtYWNoaW5lICovCisJcmVz
dGFydF9wb3dlcm9mZiB7CisJCWNvbXBhdGlibGUgPSAicmVzdGFydC1wb3dlcm9mZiI7CisJfTsK
K307CisKKyZldGgxIHsKKwlwaW5jdHJsLTAgPSA8JmdlMV9yZ21paV9waW5zPjsKKwlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOworCXN0YXR1cyA9ICJva2F5IjsKKwlwaHkgPSA8JnBoeTA+Owor
CXBoeS1tb2RlID0gInJnbWlpLWlkIjsKK307CisKKyZpMmMwIHsKKwljbG9jay1mcmVxdWVuY3kg
PSA8MTAwMDAwPjsKKwlzdGF0dXMgPSAib2theSI7CisKKwlyczVjMzcyYTogcnM1YzM3MmFAMzIg
eworCQljb21wYXRpYmxlID0gInJpY29oLHJzNWMzNzJhIjsKKwkJcmVnID0gPDB4MzI+OworCX07
Cit9OworCismbWRpbyB7CisJcGluY3RybC0wID0gPCZtZGlvX3BpbnM+OworCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7CisKKwlwaHkwOiBldGhlcm5ldC1waHlAMCB7IC8qIE1hcnZlbGwgODhF
MTUxOCAqLworCQlyZWcgPSA8MD47CisJCS8qIExFRDIgaXMgdXNlZCB0byBpbmZvcm0gdUJvb3Qg
aWYgdGhlIHBvd2VyLXN3aXRjaCB3YXMgc2xpZGVkCisJCSAgIHRvIHRoZSAib2ZmIiBwb3NpdGlv
biwgYW5kIHRoZW4gcG93ZXIgb2ZmIHRoZSBtYWNoaW5lLgorCQkgICBQYWdlIDB4MywgUmVnaXN0
ZXIgMHgxMCwgYml0IDg6CisJCQkJMHg4MDA6IExFRDIgb2ZmLCBwb3dlciBvZmYgdGhlIG1hY2hp
bmUKKwkJCQkweDkwMDogTEVEMiBvbiwgYm9vdCB0aGUgbWFjaGluZSAqLworCQltYXJ2ZWxsLHJl
Zy1pbml0ID0gPDB4MyAweDEwIDB4MSAweDE5OTE+LCAvKiBMRUQgRnVuY3Rpb24gKi8KKwkJCQkJ
PDB4MyAweDExIDB4MSAweDQ0MDE+LCAvKiBMRUQgcG9sYXJpdHkgKi8KKwkJCQkJPDB4MyAweDEy
IDB4MSAweDQ5MDU+OyAvKiBMRUQgVGltZXIgKi8KKwl9OworfTsKKworJnBjaWVjIHsKKwlzdGF0
dXMgPSAib2theSI7CisJLyogQ29ubmVjdGVkIHRvIHVQRDcyMDIwMiBVU0IgMy4wIEhvc3QgKi8K
KwlwY2llQDEsMCB7CisJCXN0YXR1cyA9ICJva2F5IjsKKwl9OworfTsKKworJnBtc3UgeworCXBp
bmN0cmwtMCA9IDwmcG14X3Bvd2VyX2NwdT47CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
K307CisKKyZydGMgeworCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cit9OworCismc2F0YSB7CisJbnIt
cG9ydHMgPSA8Mj47CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworJnNkaW8geworCXBpbmN0cmwt
MCA9IDwmc2Rpb19waW5zMj47CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlzdGF0dXMg
PSAib2theSI7CisJLyogTm8gQ0Qgb3IgV1AgR1BJT3MgKi8KKwlicm9rZW4tY2Q7Cit9OworCism
dWFydDAgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKKyZ1c2IwIHsKKwlzdGF0dXMgPSAib2th
eSI7Cit9OworCismbmFuZF9jb250cm9sbGVyIHsKKwlzdGF0dXMgPSAib2theSI7CisKKwluYW5k
QDAgeworCQlyZWcgPSA8MD47CisJCWxhYmVsID0gInB4YTN4eF9uYW5kLTAiOworCQluYW5kLXJi
ID0gPDA+OworCQltYXJ2ZWxsLG5hbmQta2VlcC1jb25maWc7CisJCW5hbmQtb24tZmxhc2gtYmJ0
OworCQluYW5kLWVjYy1zdHJlbmd0aCA9IDw0PjsKKwkJbmFuZC1lY2Mtc3RlcC1zaXplID0gPDUx
Mj47CisKKwkJcGFydGl0aW9ucyB7CisJCQljb21wYXRpYmxlID0gImZpeGVkLXBhcnRpdGlvbnMi
OworCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkjc2l6ZS1jZWxscyA9IDwxPjsKKworCQkJ
cGFydGl0aW9uQDAgeworCQkJCWxhYmVsID0gImtlcm5lbCI7CisJCQkJcmVnID0gPDB4MDAwMDAw
MDAgMHgwMjAwMDAwMD47ICAvKiAzMiBNaUIgKi8KKwkJCX07CisKKwkJCXBhcnRpdGlvbkAyMDAw
MDAwIHsKKwkJCQlsYWJlbCA9ICJ1YmkiOworCQkJCXJlZyA9IDwweDAyMDAwMDAwIDB4MWUwMDAw
MDA+OyAgLyogNDgwIE1pQiAqLworCQkJfTsKKwkJfTsKKwl9OworfTsKKworJnNwaTAgeworCXN0
YXR1cyA9ICJva2F5IjsKKwlwaW5jdHJsLTAgPSA8JnNwaTBfcGluczI+OworCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7CisKKwlzcGktZmxhc2hAMCB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+
OworCQkjc2l6ZS1jZWxscyA9IDwxPjsKKwkJY29tcGF0aWJsZSA9ICJteGljeSxteDI1bDgwMDUi
LCAiamVkZWMsc3BpLW5vciI7CisJCXJlZyA9IDwwPjsgLyogQ2hpcCBzZWxlY3QgMCAqLworCQlz
cGktbWF4LWZyZXF1ZW5jeSA9IDw1MDAwMDAwMD47CisKKwkJcGFydGl0aW9ucyB7CisJCQljb21w
YXRpYmxlID0gImZpeGVkLXBhcnRpdGlvbnMiOworCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJ
CQkjc2l6ZS1jZWxscyA9IDwxPjsKKworCQkJcGFydGl0aW9uQDAgeworCQkJCXJlZyA9IDwweDAw
MDAwIDB4ZjAwMDA+OyAvKiA5NjAgS2lCKi8KKwkJCQlsYWJlbCA9ICJ1LWJvb3QiOworCQkJCXJl
YWQtb25seTsKKwkJCX07CisJCQlwYXJ0aXRpb25AZjAwMDAgeworCQkJCXJlZyA9IDwweGYwMDAw
IDB4MTAwMDA+OyAvKiA2NCBLaUIgKi8KKwkJCQlsYWJlbCA9ICJ1LWJvb3QtZW52IjsKKwkJCX07
CisJCX07CisJfTsKK307CisKKyZwaW5jdHJsIHsKKwlwbXhfcG93ZXJfY3B1OiBwbXgtcG93ZXIt
Y3B1IHsKKwkJbWFydmVsbCxwaW5zID0gIm1wcDQiOworCQltYXJ2ZWxsLGZ1bmN0aW9uID0gInZk
ZCI7CisJfTsKKwlwbXhfcG93ZXJfdXNiOiBwbXgtcG93ZXItdXNiIHsKKwkJbWFydmVsbCxwaW5z
ID0gIm1wcDUiOworCQltYXJ2ZWxsLGZ1bmN0aW9uID0gImdwbyI7CisJfTsKKwlwbXhfcG93ZXJf
aGRkMTogcG14LXBvd2VyLWhkZDEgeworCQltYXJ2ZWxsLHBpbnMgPSAibXBwOCI7CisJCW1hcnZl
bGwsZnVuY3Rpb24gPSAiZ3BpbyI7CisJfTsKKwlwbXhfcG93ZXJfaGRkMjogcG14LXBvd2VyLWhk
ZDIgeworCQltYXJ2ZWxsLHBpbnMgPSAibXBwOSI7CisJCW1hcnZlbGwsZnVuY3Rpb24gPSAiZ3Bv
IjsKKwl9OworCXBteF9mYW5fbG9jazogcG14LWZhbi1sb2NrIHsKKwkJbWFydmVsbCxwaW5zID0g
Im1wcDEwIjsKKwkJbWFydmVsbCxmdW5jdGlvbiA9ICJncGlvIjsKKwl9OworCXBteF9oZGRfcHJl
c2VudDogcG14LWhkZC1wcmVzZW50IHsKKwkJbWFydmVsbCxwaW5zID0gIm1wcDExIiwgIm1wcDEy
IjsKKwkJbWFydmVsbCxmdW5jdGlvbiA9ICJncGlvIjsKKwl9OworCXBteF9mYW5faGlnaDogcG14
LWZhbi1oaWdoIHsKKwkJbWFydmVsbCxwaW5zID0gIm1wcDEzIjsKKwkJbWFydmVsbCxmdW5jdGlv
biA9ICJncGlvIjsKKwl9OworCXBteF9mYW5fbG93OiBwbXgtZmFuLWxvdyB7CisJCW1hcnZlbGws
cGlucyA9ICJtcHAxNCI7CisJCW1hcnZlbGwsZnVuY3Rpb24gPSAiZ3BpbyI7CisJfTsKKwlwbXhf
YnV0dG9uczogcG14LWJ1dHRvbnMgeworCQltYXJ2ZWxsLHBpbnMgPSAibXBwMTUiLCAibXBwMTYi
OworCQltYXJ2ZWxsLGZ1bmN0aW9uID0gImdwaW8iOworCX07CisJcG14X2xlZHMxOiBwbXgtbGVk
cyB7CisJCW1hcnZlbGwscGlucyA9ICJtcHA3IiwgIm1wcDU0IiwgIm1wcDU5IiwgIm1wcDYxIjsK
KwkJbWFydmVsbCxmdW5jdGlvbiA9ICJncG8iOworCX07CisJcG14X2xlZHMyOiBwbXgtbGVkcyB7
CisJCW1hcnZlbGwscGlucyA9ICJtcHA1NSIsICJtcHA1NyIsICJtcHA2MiI7CisJCW1hcnZlbGws
ZnVuY3Rpb24gPSAiZ3BpbyI7CisJfTsKK307CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZl
YnUvaW1hZ2UvTWFrZWZpbGUgYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvTWFrZWZpbGUKaW5k
ZXggZWY5Mjc0ODY2ZC4uM2E0Nzg3ODA2OSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1
L2ltYWdlL01ha2VmaWxlCisrKyBiL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZQpA
QCAtNDAsNiArNDAsMjAgQEAgZGVmaW5lIEJ1aWxkL2Jvb3QtaW1nLWV4dDQKIAltYWtlX2V4dDRm
cyAtSiAtTCBrZXJuZWwgLWwgJChDT05GSUdfVEFSR0VUX0tFUk5FTF9QQVJUU0laRSlNICRALmJv
b3RpbWcgJEAuYm9vdAogZW5kZWYKIAorZGVmaW5lIEJ1aWxkL2J1ZmZhbG8ta2VybmVsLWpmZnMy
CisJcm0gLXJmICQoS0RJUikva2VybmVsX2pmZnMyICRALmZha2VyZAorCW1rZGlyIC1wICQoS0RJ
Uikva2VybmVsX2pmZnMyCisJZGQgaWY9L2Rldi96ZXJvIG9mPSRALmZha2VyZCBicz0xMzEwMDgg
Y291bnQ9MSBjb252PXN5bmMKKwkkKFNUQUdJTkdfRElSX0hPU1QpL2Jpbi9ta2ltYWdlIFwKKwkJ
LVQgcmFtZGlzayAtQSAkKExJTlVYX0tBUkNIKSAtTyBsaW51eCAtQyBnemlwIC1uICdmYWtlIGlu
aXRyZCcgXAorCQktZCAkQC5mYWtlcmQgJChLRElSKS9rZXJuZWxfamZmczIvaW5pdHJkLmJ1ZmZh
bG8KKwljcCAkQCAkKEtESVIpL2tlcm5lbF9qZmZzMi91SW1hZ2UuYnVmZmFsbworCSQoU1RBR0lO
R19ESVJfSE9TVCkvYmluL21rZnMuamZmczIgXAorCQktLWxpdHRsZS1lbmRpYW4gLXYgLS1zcXVh
c2gtdWlkcyAtcSAtZiAtbiAteCBsem1hIC14IHJ0aW1lIC1tIG5vbmUgXAorCQktLWVyYXNlYmxv
Y2s9MTI4S2lCIC0tcGFkPSQoS0VSTkVMX1NJWkUpIC1kICQoS0RJUikva2VybmVsX2pmZnMyIC1v
ICRACisJcm0gLXJmICQoS0RJUikva2VybmVsX2pmZnMyICRALmZha2VyZAorZW5kZWYKKwogZGVm
aW5lIEJ1aWxkL3NkY2FyZC1pbWcKIAlTSUdOQVRVUkU9IiQoSU1HX1BBUlRfU0lHTkFUVVJFKSIg
XAogCS4vZ2VuX212ZWJ1X3NkY2FyZF9pbWcuc2ggJEAgXApkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xp
bnV4L212ZWJ1L2ltYWdlL2NvcnRleGE5Lm1rIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2Nv
cnRleGE5Lm1rCmluZGV4IDg1YmZhOTRkYmQuLjRhYjZmNGE3ZTggMTAwNjQ0Ci0tLSBhL3Rhcmdl
dC9saW51eC9tdmVidS9pbWFnZS9jb3J0ZXhhOS5taworKysgYi90YXJnZXQvbGludXgvbXZlYnUv
aW1hZ2UvY29ydGV4YTkubWsKQEAgLTYsNiArNiwyMiBAQAogIyBTZWUgL0xJQ0VOU0UgZm9yIG1v
cmUgaW5mb3JtYXRpb24uCiAjCiAKK2RlZmluZSBEZXZpY2UvYnVmZmFsb19sczQyMWRlCisgICQo
RGV2aWNlL05BTkQtMTI4SykKKyAgREVWSUNFX1ZFTkRPUiA6PSBCdWZmYWxvCisgIERFVklDRV9N
T0RFTCA6PSBMaW5rU3RhdGlvbiBMUzQyMURFCisgIFNVQlBBR0VTSVpFIDo9CisgIEtFUk5FTF9T
SVpFIDo9IDMzNTU0NDMyCisgIEZJTEVTWVNURU1TIDo9IHNxdWFzaGZzIHViaWZzCisgIEtFUk5F
TCA6PSBrZXJuZWwtYmluIHwgYXBwZW5kLWR0YiB8IHVJbWFnZSBub25lIHwgYnVmZmFsby1rZXJu
ZWwtamZmczIKKyAgS0VSTkVMX0lOSVRSQU1GUyA6PSBrZXJuZWwtYmluIHwgYXBwZW5kLWR0YiB8
IHVJbWFnZSBub25lCisgIERFVklDRV9EVFMgOj0gYXJtYWRhLTM3MC1idWZmYWxvLWxzNDIxZGUK
KyAgREVWSUNFX1BBQ0tBR0VTIDo9ICBcCisgICAga21vZC1ydGMtcnM1YzM3MmEga21vZC1od21v
bi1ncGlvZmFuIGttb2QtdXNiMyBrbW9kLW1kLXJhaWQwIFwKKyAgICBrbW9kLW1kLXJhaWQxIGtt
b2QtbWQtbW9kIGttb2QtZnMteGZzIG1rZjJmcyBlMmZzcHJvZ3MgcGFydHgtdXRpbHMKK2VuZGVm
CitUQVJHRVRfREVWSUNFUyArPSBidWZmYWxvX2xzNDIxZGUKKwogZGVmaW5lIERldmljZS9jem5p
Y190dXJyaXMtb21uaWEKICAgREVWSUNFX1ZFTkRPUiA6PSBDWi5OSUMKICAgREVWSUNFX01PREVM
IDo9IFR1cnJpcyBPbW5pYQotLSAKMi4yNi4wCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
