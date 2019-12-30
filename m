Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED7012CD37
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 07:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W/alPh1Pr3UXi6qeNxzoV7bsmq0c+FA7EwIMVc1+LHA=; b=S0AtkqW92dI8AW
	lADWrqsdQio8G+f2qHiARcxRAwlHiHSpwTXKJqvgtaFINUXJF1tuBGu3oMUJR8cQVWZASkzpBsBTo
	jLLAJ/TaTivBrLFv4vgL7f+qDT61lFop7T/CyqYBzqwJJkfWOvv8axz0g6JZF6Qua2YflHRl8XrnV
	nANQ0JsBnk9AXc/hU9QUERX8T3Rpt8ReoBpNE20hmmiEoZc7t0l6yvDTCWg+ul0QEU7g3GuF4p7P+
	3uoioGIlX7HtotecjB59X/DvLKwvWKJg7agrqMzXmqSVOUPONIsQCgeVtTnOXG4oUzlbavMZPZQAO
	02kBi/nr1FmYj76aj8Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iloxh-0003OG-Qf; Mon, 30 Dec 2019 06:55:33 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iloxb-0003Nj-13
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 06:55:28 +0000
Received: by mail-lj1-x22c.google.com with SMTP id r19so32373815ljg.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 22:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2H/Q+AvnrtnZ4Gzk/x22sg6eOnp8MBxrK5rWGymBsBc=;
 b=hhXh5ZFcYp8iuedTdMXAUkZJlJrIUf4AhYu85TgggJrhUo7ze59s8797ri1fFF831D
 1in/s/f0Xe9TptNRdANq2tPGaqYGlyZhz1ikkdid330XlXhDEc/G7seVTXM9a6AH4K01
 s712w6fU8aGKx1CfjU/UGasLnY5jjXGdFbqe6n3U+pI5PB7Il5o2+V2UdjgDeA7XP4lx
 4poxWScjjVSv1++QvL2Kx4so8J8Fzg8eVDAlZi1Np7WqGC9SxdhvbpawUe0jocdea6Dl
 LAH0TOhxr2sp1PaJV/aCM3IoqAWg7F91ZkbPnY9IkHdl+PbTL9zJEnpvcr++rj2uBota
 4GTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2H/Q+AvnrtnZ4Gzk/x22sg6eOnp8MBxrK5rWGymBsBc=;
 b=M9x9nztIYaNa/t6XBCPolkKb3dqmTS1EtBFE3w2thkQFAQRoXJ2adivmsCQlRzN7+j
 QLy429Ng182FT4Yuk2v8GWJjOyddIuQtA1uAb1IDorRGI/wMN+4Nn85Uue/dM6/rcP93
 UciJap0F09lIW83QiH/jtICSMgZiJtlTw4RZPZjxJ2qHlUF8/2WZ67JHbdBmB/Y1WZwY
 S4ttdoMJ7l3/AP95C4+bBXNOdifICfTVo9ggLi7OUOeHiZT9fRUCLE5abLbOY979l7RQ
 Tb8wtuMEir5TkIPq/pwZJLSm72YF0dFf/lH0kM6AJXu7G6PNXoPy/decQ4SHkVJXajnt
 tahQ==
X-Gm-Message-State: APjAAAViumR7lw8JYn0kYr3YKqLdgJTHUD4egsMyjeeVldP5n8/2sti8
 Em5c6Fm3QcOTUcK9Wu1U7bJFqcCe
X-Google-Smtp-Source: APXvYqx2FPc2zRSkrR3/H2PWTFXySv0bbkaRf0syM60T4BEJAXgRRTefLFLFRhsQkMMNmHccy/56hQ==
X-Received: by 2002:a05:651c:204f:: with SMTP id
 t15mr38343597ljo.240.1577688923124; 
 Sun, 29 Dec 2019 22:55:23 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id s9sm10985523ljh.90.2019.12.29.22.55.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 29 Dec 2019 22:55:21 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 07:54:53 +0100
Message-Id: <20191230065453.3067-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_225527_097661_3FDDD0EF 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] samba36: log error if getting device info
 failed
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKU2lnbmVkLW9mZi1ieTog
UmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIHBhY2thZ2UvbmV0d29yay9z
ZXJ2aWNlcy9zYW1iYTM2L01ha2VmaWxlICAgICAgICAgICAgfCAgMiArLQogcGFja2FnZS9uZXR3
b3JrL3NlcnZpY2VzL3NhbWJhMzYvZmlsZXMvc2FtYmEuaG90cGx1ZyB8IDEyICsrKysrKysrKy0t
LQogMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9zYW1iYTM2L01ha2VmaWxlIGIvcGFj
a2FnZS9uZXR3b3JrL3NlcnZpY2VzL3NhbWJhMzYvTWFrZWZpbGUKaW5kZXggYTQzOTJmNjJjNS4u
MTYxZjZiNDVhYSAxMDA2NDQKLS0tIGEvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL3NhbWJhMzYv
TWFrZWZpbGUKKysrIGIvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL3NhbWJhMzYvTWFrZWZpbGUK
QEAgLTksNyArOSw3IEBAIGluY2x1ZGUgJChUT1BESVIpL3J1bGVzLm1rCiAKIFBLR19OQU1FOj1z
YW1iYQogUEtHX1ZFUlNJT046PTMuNi4yNQotUEtHX1JFTEVBU0U6PTE0CitQS0dfUkVMRUFTRTo9
MTUKIAogUEtHX1NPVVJDRV9VUkw6PWh0dHBzOi8vZG93bmxvYWQuc2FtYmEub3JnL3B1Yi9zYW1i
YSBcCiAJCWh0dHBzOi8vZG93bmxvYWQuc2FtYmEub3JnL3B1Yi9zYW1iYS9zdGFibGUKZGlmZiAt
LWdpdCBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9zYW1iYTM2L2ZpbGVzL3NhbWJhLmhvdHBs
dWcgYi9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvc2FtYmEzNi9maWxlcy9zYW1iYS5ob3RwbHVn
CmluZGV4IGUxYWU2NGU2NTUuLmFiYjQzNDZhZjAgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvbmV0d29y
ay9zZXJ2aWNlcy9zYW1iYTM2L2ZpbGVzL3NhbWJhLmhvdHBsdWcKKysrIGIvcGFja2FnZS9uZXR3
b3JrL3NlcnZpY2VzL3NhbWJhMzYvZmlsZXMvc2FtYmEuaG90cGx1ZwpAQCAtNiw3ICs2LDcgQEAg
ZGV2aWNlX2dldF92YXJzKCkgewogCWpzb25faW5pdAogCWpzb25fbG9hZCAiJCh1YnVzIGNhbGwg
YmxvY2sgaW5mbykiCiAKLQlqc29uX3NlbGVjdCBkZXZpY2VzCisJanNvbl9zZWxlY3QgZGV2aWNl
cyB8fCByZXR1cm4gMQogCiAJanNvbl9nZXRfa2V5cyBrZXlzCiAJZm9yIGtleSBpbiAka2V5cwpA
QCAtMTgsMTMgKzE4LDE2IEBAIGRldmljZV9nZXRfdmFycygpIHsKIAkJCXNoaWZ0CiAJCQlqc29u
X2dldF92YXJzICRACiAJCQlqc29uX3NlbGVjdCAuLgotCQkJYnJlYWsKKwkJCWpzb25fc2VsZWN0
IC4uCisJCQlyZXR1cm4gMAogCQl9CiAKIAkJanNvbl9zZWxlY3QgLi4KIAlkb25lCiAKIAlqc29u
X3NlbGVjdCAuLgorCisJcmV0dXJuIDIKIH0KIAogWyAtZiAvdmFyL3J1bi9jb25maWcvc2FtYmEg
XSB8fCB7CkBAIC0zMiw3ICszNSwxMCBAQCBkZXZpY2VfZ2V0X3ZhcnMoKSB7CiB9CiAKIFsgIiRB
Q1RJT04iID0gImFkZCIgXSAmJiB7Ci0JZGV2aWNlX2dldF92YXJzICRERVZJQ0UgbGFiZWwgbW91
bnQKKwlkZXZpY2VfZ2V0X3ZhcnMgJERFVklDRSBsYWJlbCBtb3VudCB8fCB7CisJCWxvZ2dlciAt
dCBzYW1iYS1ob3RwbHVnICJGYWlsZWQgdG8gZ2V0ICRERVZJQ0UgaW5mbyIKKwkJZXhpdCAxCisJ
fQogCVsgLW4gIiRtb3VudCIgXSAmJiB7CiAJCXVjaSAtYyAvdmFyL3J1bi9jb25maWcgYmF0Y2gg
PDwtRU9GCiAJCQlzZXQgc2FtYmEuJERFVklDRT0ic2FtYmFzaGFyZSIKLS0gCjIuMjEuMAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
