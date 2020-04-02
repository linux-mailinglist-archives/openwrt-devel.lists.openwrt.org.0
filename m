Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3790919C0DC
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 14:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SY4DgGIqacx4dIOC3Ez5aE2Scz500CNQ2MlIrcvqyNI=; b=JV//waDj6S+Kuf
	LXOMCBuuhQvde1W6T/FZMnfECnoJ63bCoxEZqlFq8ziSfGrqvltNQljPwGT3p1kQhWSc1W6PUi/4+
	463hdKKtKEqjUnbudloMxxBJk5W5MMZ/qXdve431/nGNP/BUuVzcrd3Cv8AKAydnIBG/+yqlnxz1P
	jm53gu4gugl2vhfcxpdyZcnsP+wUr2LhTfX1P4R3imLjDQhi79rpm76R3WF848br2F+a9q7MMTTtE
	f7HTCv9HCR6CLvG2wgmHQLss84O3llEHa2E8/Yk1Atcr0W03VBTTXfqI7qHlpNTMM+nX6Kt9yioh3
	O5x6avAquVXImXWXLAag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyi4-000580-4I; Thu, 02 Apr 2020 12:12:36 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyhv-000572-Ks
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 12:12:29 +0000
Received: by mail-lj1-x244.google.com with SMTP id 19so2943775ljj.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 Apr 2020 05:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Mb/m4m/Qi2h6hLAQE8Q5J1VgShO+C5hlQASdpc9pd4=;
 b=scoVhGwXR+BgrQ+FUKmD6YhgQxEVpORDR6iXYR/Ge6MGE1ss6Y+dVjWVyQQ84ssAin
 vFSNypt07s513WxHhPwCfZNFFLVXHROcf1y4Rsgf1HRGTTzQpIvUaaknDNe2aOJAXtg3
 mw1+6lC1L6Wfzcou7N29HUPKeLdGjUF7YWytaGiT/T/PzOegeQJoafGozKT3yySxWDn9
 Q1r51ukHi4jJEQVFbm5Cv5WT+XHJW1RwiJwiuSrDHaF7TdP+/a8DpKfoEVez8jRMxsWG
 dORQSCH3sTzjb0+52IuedGK41CpIeF2on9e9fxgnWeWHeVDkE/o7LgVKMX/oOOHp1IK7
 D/mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Mb/m4m/Qi2h6hLAQE8Q5J1VgShO+C5hlQASdpc9pd4=;
 b=A391ULsKze1LKTp3H8UhkA3yj+6I83Yn2guOYzBRkAirOoPjzMOaAUHcyg6h+aHlqg
 xxCAiWcU7UUxlOMZKUvUAUEO/grESeGGhTwd9WmwsXEnAOr3pH+sxENKUNL5wvI60i/c
 sYRDQ0Clx6dJTSV7hUQAL7CIrPdZr+4jJPKwzem++T7dK+FgKqRTFjK3l0NtF5aBMtvl
 tEkPE+/yL7NBUMYUlrYbGjwMFZOpsxgzEX7gubjmyFJTUzOEbSOV7J2PHO7lYmE2QxA8
 zsG1qwz113qPN/D7BWeRjbkCDtdgMFTAE+9K85ARGs0112uoJZasDQw3V53LXgV3LNkv
 wAUw==
X-Gm-Message-State: AGi0PuaK0klc/AFlhefIw0CEfBU1xIJr3bVRIP2eB1e3brSHahoFsvLb
 WaYhCiLsFz9sskxN5WwILRETHlgX
X-Google-Smtp-Source: APiQypLraQMKLa/UR2q7JtJD2AbulToON8jRIyuvRcw4F3F3YJ9Iss4kEh/QLE/bzujEiVoAE79rSA==
X-Received: by 2002:a2e:94c8:: with SMTP id r8mr1855196ljh.28.1585829544858;
 Thu, 02 Apr 2020 05:12:24 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id s6sm3141311ljm.58.2020.04.02.05.12.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 05:12:24 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  2 Apr 2020 14:12:12 +0200
Message-Id: <20200402121213.16777-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_051227_683572_84C5AEA2 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH fstools V3 1/2] Revert "block: mount_action:
 handle mount/umount deps"
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Yousong Zhou <yszhou4tech@gmail.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyByZXZlcnRzIGNv
bW1pdCAzMmMzMTI2YjJmMDQ2NDEwNmQ3NDMxNzMzNmI2YWVmMWQ3ZDVmODJmLgoKSW50ZXJuYWxs
eSBzdG9yZWQgbGlzdCBvZiBkZXZpY2VzIGlzIGltcGxlbWVudGVkIHVzaW5nIHN0cnVjdCB2bGlz
dF90cmVlCmFuZCBrZWVwcyBkZXZpY2VzIHNvcnRlZCBieSB0aGVpciBtb3VudCB0YXJnZXQgcGF0
aHMuIFRoaXMgRE9FU04nVCBtZWFuCnRoYXQgYWxsIHByZWNlZGluZyBlbnRpcmVzIG9mIGEgZ2l2
ZW4gZGV2aWNlIGFyZSBpdHMgcGFyZW50IGRldmljZXMuCk1ha2luZyBzdWNoIGFuIGFzc3VtcHRp
b24gYW5kIG1vdW50aW5nIGFsbCBwcmVjZWRpbmcgZGV2aWNlcyByZXN1bHRzIGluCnVud2FudGVk
IG1vdW50cyBpbiBtb3N0IGNhc2VzLgoKRm9yIGV4YW1wbGUgaGF2aW5nIGRldmljZXMgbGlrZToK
L2Rldi9zZGExIChtb3VudCB0YXJnZXQ6IC9tbnQvZm9vMSkKL2Rldi9zZGEyIChtb3VudCB0YXJn
ZXQ6IC9tbnQvZm9vMikKL2Rldi9zZGIxIChtb3VudCB0YXJnZXQ6IC9tbnQvYmFyMSkKL2Rldi9z
ZGIyIChtb3VudCB0YXJnZXQ6IC9tbnQvYmFyMikKd2lsbCByZXN1bHQgaW4gZGV2aWNlcyB2bGlz
dF90cmVlIGhhdmluZyBlbnRyaWVzIHNvcnRlZCBsaWtlOgovZGV2L3NkYjEgKGJhcjEpLCAvZGV2
L3NkYjIgKGJhcjIpLCAvZGV2L3NkYTEgKGZvbzEpLCAvZGV2L3NkYTIgKGZvbzIpCgpVc2luZyBh
dXRvZnMgYW5kIGFjY2Vzc2luZyAvbW50L2ZvbzIgd291bGQgcmVzdWx0IGluIG1vdW50aW5nIGFs
bCA0CnBhcnRpdGlvbnMgYW5kIHNwaW5uaW5nIHVubmVlZGVkIC9kZXYvc2RiLgoKQ2M6IFlvdXNv
bmcgWmhvdSA8eXN6aG91NHRlY2hAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnF
gmVja2kgPHJhZmFsQG1pbGVja2kucGw+Ci0tLQpWMjogVXBkYXRlIGNvbW1pdCBtZXNzYWdlClYz
OiBVcGRhdGUgY29tbWl0IG1lc3NhZ2UKLS0tCiBibG9jay5jIHwgNDMgKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlv
bnMoKyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Jsb2NrLmMgYi9ibG9jay5jCmlu
ZGV4IDllNTMwZjEuLmY3NDNlNzUgMTAwNjQ0Ci0tLSBhL2Jsb2NrLmMKKysrIGIvYmxvY2suYwpA
QCAtMTIwMiw0NyArMTIwMiwzMCBAQCBzdGF0aWMgaW50IHVtb3VudF9kZXZpY2UoY2hhciAqcGF0
aCwgaW50IHR5cGUsIGJvb2wgYWxsKQogCiBzdGF0aWMgaW50IG1vdW50X2FjdGlvbihjaGFyICph
Y3Rpb24sIGNoYXIgKmRldmljZSwgaW50IHR5cGUpCiB7Ci0Jc3RydWN0IGRldmljZSAqdGhlX2Rl
diwgKmRldjsKIAljaGFyIHBhdGhbMzJdOwogCiAJaWYgKCFhY3Rpb24gfHwgIWRldmljZSkKIAkJ
cmV0dXJuIC0xOwotCi0JaWYgKGNvbmZpZ19sb2FkKE5VTEwpKQotCQlyZXR1cm4gLTE7Ci0JY2Fj
aGVfbG9hZCgwKTsKLQotCXRoZV9kZXYgPSBmaW5kX2Jsb2NrX2RldmljZShOVUxMLCBOVUxMLCBk
ZXZpY2UpOworCXNucHJpbnRmKHBhdGgsIHNpemVvZihwYXRoKSwgIi9kZXYvJXMiLCBkZXZpY2Up
OwogCiAJaWYgKCFzdHJjbXAoYWN0aW9uLCAicmVtb3ZlIikpIHsKIAkJaWYgKHR5cGUgPT0gVFlQ
RV9IT1RQTFVHKQogCQkJYmxvY2tkX25vdGlmeShkZXZpY2UsIE5VTEwsIE5VTEwpOwogCi0JCWlm
ICghdGhlX2RldiB8fCAhdGhlX2Rldi0+bSB8fCB0aGVfZGV2LT5tLT50eXBlICE9IFRZUEVfTU9V
TlQpIHsKLQkJCXNucHJpbnRmKHBhdGgsIHNpemVvZihwYXRoKSwgIi9kZXYvJXMiLCBkZXZpY2Up
OwotCQkJdW1vdW50X2RldmljZShwYXRoLCB0eXBlLCB0cnVlKTsKLQkJfSBlbHNlCi0JCQl2bGlz
dF9mb3JfZWxlbWVudF90b19sYXN0X3JldmVyc2UoJmRldmljZXMsIHRoZV9kZXYsIGRldiwgbm9k
ZSkKLQkJCQlpZiAoZGV2LT5tICYmIGRldi0+bS0+dHlwZSA9PSBUWVBFX01PVU5UKQotCQkJCQl1
bW91bnRfZGV2aWNlKGRldi0+cHItPmRldiwgdHlwZSwgdHJ1ZSk7CisJCXVtb3VudF9kZXZpY2Uo
cGF0aCwgdHlwZSwgdHJ1ZSk7CisKIAkJcmV0dXJuIDA7Ci0JfSBlbHNlIGlmICghc3RyY21wKGFj
dGlvbiwgImFkZCIpKSB7Ci0JCWlmICghdGhlX2RldikKLQkJCXJldHVybiAtMTsKLQkJaWYgKHRo
ZV9kZXYtPm0gJiYgdGhlX2Rldi0+bS0+dHlwZSA9PSBUWVBFX01PVU5UKSB7Ci0JCQl2bGlzdF9m
b3JfZmlyc3RfdG9fZWxlbWVudCgmZGV2aWNlcywgdGhlX2RldiwgZGV2LCBub2RlKSB7Ci0JCQkJ
aWYgKGRldi0+bSAmJiBkZXYtPm0tPnR5cGUgPT0gVFlQRV9NT1VOVCkgewotCQkJCQlpbnQgZXJy
ID0gbW91bnRfZGV2aWNlKGRldiwgdHlwZSk7Ci0JCQkJCWlmIChlcnIpCi0JCQkJCQlyZXR1cm4g
ZXJyOwotCQkJCX0KLQkJCX0KLQkJCXJldHVybiAwOwotCQl9IGVsc2UKLQkJCXJldHVybiBtb3Vu
dF9kZXZpY2UodGhlX2RldiwgdHlwZSk7CisJfSBlbHNlIGlmIChzdHJjbXAoYWN0aW9uLCAiYWRk
IikpIHsKKwkJVUxPR19FUlIoIlVua293biBhY3Rpb24gJXNcbiIsIGFjdGlvbik7CisKKwkJcmV0
dXJuIC0xOwogCX0KLQlVTE9HX0VSUigiVW5rb3duIGFjdGlvbiAlc1xuIiwgYWN0aW9uKTsKLQly
ZXR1cm4gLTE7CisKKwlpZiAoY29uZmlnX2xvYWQoTlVMTCkpCisJCXJldHVybiAtMTsKKwljYWNo
ZV9sb2FkKDApOworCisJcmV0dXJuIG1vdW50X2RldmljZShmaW5kX2Jsb2NrX2RldmljZShOVUxM
LCBOVUxMLCBwYXRoKSwgdHlwZSk7CiB9CiAKIHN0YXRpYyBpbnQgbWFpbl9ob3RwbHVnKGludCBh
cmdjLCBjaGFyICoqYXJndikKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
