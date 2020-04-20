Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA03B1B00BF
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 06:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LVZaKN0kXGLswEdpkUJc+dHROlxBrp1OGA3TxutWhfs=; b=lVY
	zklyvXECT52mBARjzfX4s9U3NZkSdc3UQ9z+l2Rss8M3Xmi3bu65u1g6eNYEOCbc1mGirzvZJViHD
	9ML9iAJtWHXOg0A8uIot82iESLGj9n+8YMG8CAwA87OFNS7qkDngfvQLspTg/DQebZ4sg4TQX1yJn
	BSC0n4gLIryW9a3lWehIRWwvCXcRILQKT97N5m//AlVMZ4TOtaO5RpWoIhKXcypv/ml0Pw9rMtc4d
	HApG/vxSZjLdy4UiDUYsBTJq90CTH/trmwxq/DSr17e3rEorafKbrsFigV7nDXRu/gJ5Ynxe61PR7
	qOpxcefzdiwumEIs0+9t05CZkFO+HFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQO2a-0002Kz-PQ; Mon, 20 Apr 2020 04:28:16 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQO2R-0002Kf-Vc
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 04:28:09 +0000
Received: by mail-qt1-x82b.google.com with SMTP id w29so7484195qtv.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 21:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=m2j-com-br.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=wbjsMAQb5YEanNrldhcD/jUPE/2Axk3tZu0CEPg+7gg=;
 b=b9y8xHOXie5IbcV1tbL1IH4cRsn1QMWxzOVOonAbJOj4xXsXlMTNY1/2FYM0LaTx5r
 MkIs0nUV867Cwl4KZbqO1+OiCGD8+WESpKbcZ6RFh163FIwbF13N3Nn9wqVfGkp+DJy/
 huSYNL8kwLKa/yCgRQ8iCgiMWwuDTBRBwj5s4NgnT5gJvxQG8+OMJFYcWag2c+KXBA6m
 zNL8vcrKEqI86a1ezql5T6bI+1Tix+8JQgLw/s2FbMqyaVsNQr0uOOhLoAQwJSqH2MT3
 m5OyfT8vGS4k9GyJNxm1Zv3UjO56msYSCLC3ltNZ18xnSfVtxOzCNHqdvU+uA+lQDbcb
 nejg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=wbjsMAQb5YEanNrldhcD/jUPE/2Axk3tZu0CEPg+7gg=;
 b=pZfO4MYB31edHXqLkWurJy6rtSav8OXqYfX8wbLgHL/BCQfHykxOAssGzsSVgW1ecV
 HCp10wg3zxpOX5v+5bzDq1mIXtqTxBWwNKRVvEiXtyVMygFtXzd76MS36SLo+rv1rXjV
 vemVl4fhNd0m4y/a9gQKMO1C9d3idqJ3mjtgQC6DynWjXmqfyC8lfDNTXjM+Zs2F1FVo
 yvBwXA3n0ReElRh10AQ/hAWylTSjyqFBrxik/WW7rncp2ix+WBehjaa8XEi+z/Etjimi
 jgULqdRx4WjJnfG5Zqm3yV0vGOu4233R5jcuZHTmYKQaIgbKhLbSF+Q2beke4nun2pOW
 F9uA==
X-Gm-Message-State: AGi0PubWeAtitPeW53ohBvS18Rmq138pncxYmUU+3isCweLv4oBwcmUk
 s8aD4XD+fJ3hnFEGyEnmADpJ76uKkWzPYtJEODf3drgcRkY=
X-Google-Smtp-Source: APiQypJwQvwZKMppoW79A/aF1DLCkZsxFwEcRgCxmrVdAMMIzC85uKUiXt6qxLGy1rkSemJLMZe6bnp+zMRmigB7f1o=
X-Received: by 2002:ac8:6751:: with SMTP id n17mr14453552qtp.16.1587356885281; 
 Sun, 19 Apr 2020 21:28:05 -0700 (PDT)
MIME-Version: 1.0
From: Marcelo Pacheco <marcelo@m2j.com.br>
Date: Mon, 20 Apr 2020 01:27:54 -0300
Message-ID: <CACthiCc65KKHFiucXk7xyy+Nrp5Mjne=g4SrbX6RFUc_xJroDA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_212808_085502_B83C2CF8 
X-CRM114-Status: UNSURE (   3.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Bug on procps-ng-skill OpenWrt 19.07.2
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
Content-Type: multipart/mixed; boundary="===============4080804769407973313=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4080804769407973313==
Content-Type: multipart/alternative; boundary="0000000000004785bd05a3b153ff"

--0000000000004785bd05a3b153ff
Content-Type: text/plain; charset="UTF-8"

In module procps-ng-3.3.15, source skill.c, function check_proc
char buf[128];

This buffer is too small to read /proc/<pid>/stat
The code requires the whole file to be read:
         len = read(fd, buf, sizeof(buf));
        if (len <= 0 || (size_t)len >= sizeof(buf))
                goto closure;

Fix I used is to increase to 256 bytes.
Worked for me.

--0000000000004785bd05a3b153ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">In module procps-ng-3.3.15, source skill.=
c, function check_proc<div>char buf[128];</div><div><br></div><div>This buf=
fer is too small to read /proc/&lt;pid&gt;/stat</div><div>The code requires=
 the whole file to be read:</div><div>=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 len=
 =3D read(fd, buf, sizeof(buf));</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (=
len &lt;=3D 0 || (size_t)len &gt;=3D sizeof(buf))</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto closure;</div><div><br></div=
><div>Fix I used is to increase to 256 bytes.</div><div>Worked for me.</div=
></div></div>

--0000000000004785bd05a3b153ff--


--===============4080804769407973313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4080804769407973313==--

