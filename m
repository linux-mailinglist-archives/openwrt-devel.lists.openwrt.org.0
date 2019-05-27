Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F73E2AD00
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 04:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/cEX1wKd+ch2hbmPpV3l130sPibgHZLAAgSn2FbdqCs=; b=dJtGvAagy2c5Ac
	VQhWEOyDS1IUj49XruksNIUfaTz3jO3vjjVhvVoNc62GUZCpWRvqcg4w8HwVczS9kByCrNLDCa5hj
	jTpsha0NRf4BBg34/Vl2w1Ago24/iqJuFDihrJlJR808dOI015I9ej/NJ2vYpK60xFAz11mVYOCvN
	SJD9WAhBzbjm4nX580NL3oLWDcnhk62zZfT/mbxbcokdZoFheatVH0/aSVktlqVyg0h6sNJ6+R7L9
	3irE+xy6f1NTwmmzVYATvW81krmXZY/G6fQMy5mLwbU5TGH/hcxK4CEnwyCTmS5S9acrqveBc8+zy
	nVi0eCp9RO7sRssBvDjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV5eM-0003mJ-8T; Mon, 27 May 2019 02:46:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV5eF-0003lv-QM
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 02:46:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so8204732pgp.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 May 2019 19:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L08qWIUymSSuSGQLTo+cNVp0vrDKW7dVo65tWgIUXwY=;
 b=pfex4C2bcDGmPzKctelYkPANX3CheyfMGTOplhh6KqcnPlxEE5Vy8PSMwjxhOFa011
 2s08OUHj9a4qq7Vqs3ItriKEPy1KuqtbeLrGvktIf5Z981hh2VbSUj+0YdQNRiUadZbt
 RrBit+19OKdYD4HPX6RZsfx+DOtACTgEwzBofbsjg0kXZH88k2RHPPavFAs8braQC+md
 +eT/hDa1JW1s2YVSmkS+blMmexAxTyoQCUhld841+1m7TaMjDTdNw3/9Elhluo+ehjUM
 W3L4nrZyszgM8mZV4ejCBj3QQ2jnhzSzgxq0LPHPw4YrJhEPw2fQR6ed2jjYUy/tZfo/
 BWfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L08qWIUymSSuSGQLTo+cNVp0vrDKW7dVo65tWgIUXwY=;
 b=Omdafwj7+SsqtMzDN10/31V1AgPeZVRQ803wr/+6J6L5EyXXkK1HyytfOtd0ek4sM/
 Rk5QquCutG36NSGzdA1OFXiG+C3399IIV/hbecqjl6u1pPeWb04o8v8x+p7vbzq0CO//
 Mg+cFrjyowRphVAY/PMM2MVpvii56TpIWnC+/qfVfCx0GK3EhtqRugr6k3paCfSdz+pB
 S6oZqiYEdeN0+bPQIoucpv19LAOrpnvQZcVPjS6qyqNDB5MmsWu0peKe+TrgTaINcDxv
 kTXO1/cKQ8l/CtYEYq5iu/mauQby2R2ndgj7LmDJKccxpiySDgK04ocIgM1bzudtKf9N
 TwpQ==
X-Gm-Message-State: APjAAAUTpTGsRK+BdqGjpG8DXtMFx2BwTfq9nKRKaLjdgTYvLs3Wuvih
 DftT38szsLLXhiejohPYzGRNf0Ew
X-Google-Smtp-Source: APXvYqwqtN/i45LKUVUP3wIbzTQOGiOCTx5b+raaKmn9jw1fBrcVrFzYCoHrHmJXHwQ4aTPT5nYYgA==
X-Received: by 2002:a62:e00e:: with SMTP id
 f14mr132782961pfh.257.1558925160419; 
 Sun, 26 May 2019 19:46:00 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com
 (165.116.92.34.bc.googleusercontent.com. [34.92.116.165])
 by smtp.gmail.com with ESMTPSA id i27sm14354544pfk.162.2019.05.26.19.45.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 19:45:59 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 May 2019 02:45:50 +0000
Message-Id: <20190527024550.16684-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_194603_879311_998D21E9 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH uclient] uclient-http: set data_eof when
 content-length is 0
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Otherwise uclient-fetch can report "Connection reset prematurely"

Fixes FS#2222

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 uclient-http.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/uclient-http.c b/uclient-http.c
index 3168f4c..c1f7228 100644
--- a/uclient-http.c
+++ b/uclient-http.c
@@ -199,7 +199,8 @@ static void uclient_notify_eof(struct uclient_http *uh)
 			return;
 	}
 
-	if (uh->content_length < 0 && uh->read_chunked >= 0)
+	if ((uh->content_length < 0 && uh->read_chunked >= 0) ||
+			uh->content_length == 0)
 		uh->uc.data_eof = true;
 
 	uclient_backend_set_eof(&uh->uc);

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
