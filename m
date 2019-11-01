Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB09EEC484
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 15:18:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yBSg7LYiL4z74XAKTMAQKLy2t6RFa8jh+eFWKU7t8zU=; b=Shp7DEBbym4KhK
	AjlG4Vf6wWBsKpvnGyQBX7AUySgpOAcMYtV1ZfdWalGuzFoBhNYXTG+DzFAknerRKqruwwWRbDkMj
	P8ymBIQZYWs0AqNpoCESMGGABZluuLJO98joU5aFdS0atB4JRIrcEDCqQV4KPeeqAJ3HrlLhE5dTo
	8JZmn7dS3ncbNTmW8rsrxp6xRTpcdSd2JIIEr0IW/GpYSrXU/58sLbvR3Ozj44ToKSBYbu/0k+PKN
	QAQ2HyfSdP0A8/7fboW1qzxb4G2A9xghU0uPJjy/OLSvzbzAnnu3OqxRIuIt199/DFMrqWDLAyO9e
	aKf7vygOugDMOEsvcsSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXlK-0007w3-Lv; Fri, 01 Nov 2019 14:18:50 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXlA-0007vY-Lw
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 14:18:41 +0000
Received: by mail-wm1-x32e.google.com with SMTP id q70so9488113wme.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 Nov 2019 07:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bcsDR5smmqR57A4ZLQPr2sK83/04cSntexgmDJqjhX0=;
 b=l30La+EnDcOasWW8QuFKplxYQXf5bnJIM5llVUJQPv6NipqRcuMic7WIW/ktt5UN7y
 3Z2LTfRK9fR+fbev/QsO3l4Tsi1f8OfDp0dmKtIVM2BrmmfJ5kcafLUkvZs8ifaHeRVM
 Fgn+5FXMIFW6VI5PD4urtIZpaQINZc+am3psXeDxYRAxYB1Gl6iZE2YFu4+mgWBuRvf0
 KnPm8+vWjc5VkNbRLuTax1W+btSHLyjPDWBF8wWa5ji4vXbaMxFX+B/s3vDHt4J8cBnv
 SOexFI/ryX6+tpDw3oPJvfD0yRkU+JXOWaR90JVQ9ylIbofybyZlsThcAx2C4IftqH2I
 bR6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bcsDR5smmqR57A4ZLQPr2sK83/04cSntexgmDJqjhX0=;
 b=e1oV9QT8qEo5DLn8fHLF6btCXgFYmPSrECuvsHY9pimIvkmYbRbqvG3kSfrqOg+bZA
 aOczWLzHRAlUp0O5TB0GwOz131HpjFCY/dQVjpZB6qHwk9E1SDq2/98p2h8upej+d+D3
 2/DLRjJdFWHJxUl4dC/fCz5pNwWkN+HsaAXmxs75X4I7Kmon2pxWDPS2PeS3ZR1pMMNi
 /FFaKXJ+dfI6Io0BKcGGR4XKXNsrJiTGHHW5g42ERUsDk6RLpnR/0hVU7Rel10/ORJKw
 Yc7cTKvA40iBLrvPy6Lk7oZt9wbzH6+u0czpogvESOMNf1DLr7/5uVVFJx25V8h5MttS
 v3kg==
X-Gm-Message-State: APjAAAWQWMXzD4HO7loFQKLl19esv6/jz20zL/jQC/LcEuE2lLnQUYfC
 MWzl/zo4AtmR2v8djj9TRidgCVc7KzI=
X-Google-Smtp-Source: APXvYqyYG3kAFYpvUZw0Rz6lvyUiePQDOHSRg/IMUEuvYclNTnhpjCWoNGCKtLYbq0JNiyBfhgYfJQ==
X-Received: by 2002:a7b:c5c9:: with SMTP id n9mr10941584wmk.94.1572617918209; 
 Fri, 01 Nov 2019 07:18:38 -0700 (PDT)
Received: from localhost.localdomain ([31.147.208.18])
 by smtp.googlemail.com with ESMTPSA id s21sm10605619wrb.31.2019.11.01.07.18.37
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Fri, 01 Nov 2019 07:18:37 -0700 (PDT)
From: =?UTF-8?q?Tomislav=20Po=C5=BEega?= <pozega.tomislav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 15:18:35 +0100
Message-Id: <1572617915-30768-1-git-send-email-pozega.tomislav@gmail.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_071840_719953_B698E204 
X-CRM114-Status: UNSURE (   4.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] iwinfo: add several QC/A device ids
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

QWRkIGRldmljZSBpZHMgZm9yIEFSOTQ2MiwgUUNBOTg2MiwgUUNBOTg4MCB2MSBtUENJZSBjYXJk
cyBhbmQKVWJpcXVpdGkgYnJhbmRlZCBRQ0E5ODgwIHYyIFBDSSB3aWZpIGZvdW5kIGluIExpdGVC
ZWFtIDVhYy4KClNpZ25lZC1vZmYtYnk6IFRvbWlzbGF2IFBvxb5lZ2EgPHBvemVnYS50b21pc2xh
dkBnbWFpbC5jb20+Ci0tLQotLS0gYS9oYXJkd2FyZS50eHQKKysrIGIvaGFyZHdhcmUudHh0CkBA
IC0xLDYgKzEsNyBAQAogIyBsaWJpd2luZm8gaGFyZHdhcmUgZGF0YWJhc2UKICMgdmVuZG9yIGlk
IHwgZGV2aWNlIGlkIHwgc3Vic3lzdGVtIHZlbmRvciBpZCB8IHN1YnN5c3RlbSBkZXZpY2UgaWQg
fAogIyB0eHBvd2VyIG9mZnNldCB8IGZyZXF1ZW5jeSBvZmZzZXQgfCAidmVuZG9yIG5hbWUiIHwg
ImRldmljZSBuYW1lIgorMHgwNzc3IDB4MTFhYyAweDA3NzcgMHhlN2Y5ICAgIDAgICAgICAwICAi
VWJpcXVpdGkiICJMaXRlQmVhbSA1QUMiCiAweGZmZmYgMHhmZmZmIDB4ZmZmZiAweGIxMDIgICAg
MCAgICAgIDAgICJVYmlxdWl0aSIgIlBvd2VyU3RhdGlvbjIgKDE4VikiCiAweGZmZmYgMHhmZmZm
IDB4ZmZmZiAweGIyMDIgICAgMCAgICAgIDAgICJVYmlxdWl0aSIgIlBvd2VyU3RhdGlvbjIgKDE2
RCkiCiAweGZmZmYgMHhmZmZmIDB4ZmZmZiAweGIzMDIgICAgMCAgICAgIDAgICJVYmlxdWl0aSIg
IlBvd2VyU3RhdGlvbjIgKEVYVCkiCkBAIC0xNTIsNyArMTUzLDEwIEBACiAweDE2OGMgMHgwMDMz
IDB4MTliNiAweGQwMTQgICAgMCAgICAgIDAgICJNaWtyb1RpayIgIlIxMWUtNUhuRCIKIDB4MTY4
YyAweDAwMzMgMHgxOWI2IDB4ZDA1NyAgICAwICAgICAgMCAgIk1pa3JvVGlrIiAiUjExZS01SG5E
cjIiCiAweDE2OGMgMHgwMDMzIDB4MTliNiAweGQwMTYgICAgMCAgICAgIDAgICJNaWtyb1RpayIg
IlIxMWUtMkhQbkQiCisweDE2OGMgMHgwMDM0IDB4MTdhYSAweDMyMTQgICAgMCAgICAgIDAgICJB
dGhlcm9zIiAgIkFSOTQ2MiIKIDB4MTY4YyAweDAwM2MgMHgwMDAwIDB4MDAwMCAgICAwICAgICAg
MCAgIlF1YWxjb21tIEF0aGVyb3MiICJRQ0E5ODgwIgorMHgxNjhjIDB4MDAzYyAweDE2OGMgMHgz
MjIzICAgIDAgICAgICAwICAiUXVhbGNvbW0gQXRoZXJvcyIgIlFDQTk4ODAiCisweDE2OGMgMHgw
MDNjIDB4MWE1NiAweDE0MjAgICAgMCAgICAgIDAgICJRdWFsY29tbSBBdGhlcm9zIiAiUUNBOTg2
MiIKIDB4MTY4YyAweDAwM2MgMHgxOWI2IDB4ZDAzYyAgICAwICAgICAgMCAgIk1pa3JvdGlrIiAi
UjExZS01SGFjVCIKIDB4MTY4YyAweDAwNDYgMHgxNjhjIDB4Y2FmZSAgICAwICAgICAgMCAgIlF1
YWxjb21tIEF0aGVyb3MiICJRQ0E5OTg0IgogMHgxNjhjIDB4MDA1MCAweDAwMDAgMHgwMDAwICAg
IDAgICAgICAwICAiUXVhbGNvbW0gQXRoZXJvcyIgIlFDQTk4ODciCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
